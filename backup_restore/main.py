import dataclasses
import gzip
import json
import os
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
    dump_file_path: str

    def restoring_dump(self):
        restore_command = [
            'psql',
            '-h', self.host,
            '-p', self.port,
            '-U', self.user,
            '-v',
            '-d', self.dbname,
            '-f', self.dump_file_path,
        ]

        try:
            subprocess.run(restore_command, check=True, env={"PGPASSWORD": conf.db_password})
            print("Restored DB")
        except subprocess.CalledProcessError as e:
            print(f"An error occurred while restoring the database: {e}")


def write_encoded_dump_to_file(base64_str) -> str:
    decoded_base64_as_bytes = b64decode(base64_str)
    decompressed_data = gzip.decompress(decoded_base64_as_bytes)

    relative_path = "utils/backup_restore_dump.sql"
    absolute_path = os.path.abspath(relative_path)

    with open(relative_path, "w") as f:
        f.write(decompressed_data.decode("utf-8"))

    return absolute_path


def get_alive_ssn() -> list:
    conn_url = f"postgresql://{conf.db_user}:{conf.db_password}@{conf.db_host}:{conf.db_port}/{conf.db_name}"
    with psycopg.connect(conn_url) as conn:
        with conn.cursor() as cursor:
            cursor.execute(
                """
                SELECT ssn FROM criminal_records WHERE status='alive';
                """
            )

            records = cursor.fetchall()

    alive_ssn_records = [ssn[0] for ssn in records]
    return alive_ssn_records


def solution(response):
    base64_str = response.get("dump")

    dump_file_path = write_encoded_dump_to_file(base64_str)

    backup_restore = BackupRestore(
        host=conf.db_host,
        dbname=conf.db_name,
        port=conf.db_port,
        user=conf.db_user,
        dump_file_path=dump_file_path
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
