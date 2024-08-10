from config.config import Config

access_token = Config.load_env().access_token

BASE_URL = 'https://hackattic.com/challenges'


def get_url_maker(problem_name: str):
    return f'{BASE_URL}/{problem_name}/problem?access_token={access_token}'

def post_url_maker(problem_name: str):
    return f'{BASE_URL}/{problem_name}/solve?access_token={access_token}'