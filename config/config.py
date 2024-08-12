from dotenv import load_dotenv
from dataclasses import dataclass
import os

load_dotenv()


@dataclass
class Config:
    access_token: str
    db_user: str
    db_password: str
    db_name: str
    db_host: str
    db_port: str

    @classmethod
    def load_env(cls):
        return cls(
            access_token=os.environ["ACCESS_TOKEN"],
            db_user=os.environ["PSQL_USER"],
            db_name=os.environ["PSQL_DB"],
            db_password=os.environ["PSQL_PSWD"],
            db_host=os.environ["PSQL_HOST"],
            db_port=os.environ["PSQL_PORT"],
        )
