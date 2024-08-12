import dataclasses
import gzip
import subprocess
from base64 import b64decode

import psycopg

from config.config import Config
from config.request_maker import RequestMaker

CHALLENGE_NAME = "backup_restore"

conf = Config.load_env()


@dataclasses.dataclass
class BackupRestore:
    host: str
    dbname: str
    port: str
    user: str
    uncompressed_dump: str

    def restoring_dump(self):
        restore_command = [
            'psql',
            '-h', self.host,
            '-p', self.port,
            '-U', self.user,
            '-d', self.dbname,
        ]

        try:
            result = subprocess.run(restore_command, check=True, input=self.uncompressed_dump, text=True,env={"PGPASSWORD": conf.db_password})
            print("Restored DB successfully.")
            print(f"Output: {result.stdout}")
            if result.stderr:
                print(f"Warnings/Errors: {result.stderr}")
        except subprocess.CalledProcessError as e:
            print(f"An error occurred while restoring the database: {e}")
            print(f"Command Output: {e.output}")
            print(f"Command Stderr: {e.stderr}")


def write_encoded_dump_to_file(base64_str) -> str:
    decoded_base64_as_bytes = b64decode(base64_str)
    decompressed_data = gzip.decompress(decoded_base64_as_bytes).decode('utf-8')
    return decompressed_data


def get_alive_ssn() -> list:
    conn_url = f"postgresql://{conf.db_user}:{conf.db_password}@{conf.db_host}:{conf.db_port}/{conf.db_name}"
    with psycopg.connect(conn_url) as conn:
        with conn.cursor() as cursor:
            cursor.execute(
                """
                SELECT ssn FROM criminal_records WHERE status='alive'
                """
            )

            records = cursor.fetchall()

    return [ssn[0] for ssn in records]


def solution(response):
    base64_str = response.get("dump")

    uncompressed_dump = write_encoded_dump_to_file(base64_str)

    backup_restore = BackupRestore(
        host=conf.db_host,
        dbname=conf.db_name,
        port=conf.db_port,
        user=conf.db_user,
        uncompressed_dump=uncompressed_dump
    )
    backup_restore.restoring_dump()

    return get_alive_ssn()


if __name__ == "__main__":
    challenge_handler = RequestMaker(CHALLENGE_NAME)
    response = challenge_handler.fetch_problem()

    records = solution(response.json())
    solution = dict(alive_ssns=records)

    print(solution)

    solution_handler = challenge_handler.submit_solution(solution)
    print(solution_handler.content)
    print(solution_handler)
