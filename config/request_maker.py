import requests

from .url_builder import get_url_maker, post_url_maker


class RequestMaker:
    problem_name: str

    def __init__(self, problem_name: str):
        self.problem_name = problem_name

    @property
    def _fetch_challenge_url(self):
        return get_url_maker(problem_name=self.problem_name)

    @property
    def _fetch_submit_url(self):
        return post_url_maker(problem_name=self.problem_name)

    def fetch_problem(self):
        try:
            response = requests.get(self._fetch_challenge_url)
            response.raise_for_status()
            return response
        except requests.exceptions.RequestException as e:
            print(f"An error occurred: {e}")

    def submit_solution(self, data):
        headers = {'Content-Type': 'application/json'}
        response = requests.post(self._fetch_submit_url, json=data, headers=headers)
        response.raise_for_status()
        return response
