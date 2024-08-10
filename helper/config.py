from dotenv import load_dotenv
from dataclasses import dataclass
import os

load_dotenv()


@dataclass
class Config:
    access_token: str

    @classmethod
    def load_env(cls):
        return cls(access_token=os.environ['ACCESS_TOKEN'])
    