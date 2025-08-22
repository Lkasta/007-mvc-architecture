import re
from src.models.sqlite.interfaces.people_repository import PeopleRepositoryInterface

class PersonCreatorController:
  def __init__(self, people_repository: PeopleRepositoryInterface) -> None:
    self.__people_repository = people_repository

  def create(self, person_info: dict) -> dict:
    first_name = person_info["first_name"]
    last_name = person_info["last_name"]
    age = person_info["age"]
    pet_id = person_info["pet_id"]

    self.__validadte_name(first_name,"first name")
    self.__validadte_name(last_name,"last name")
    self.__insert_person_in_db(first_name, last_name, age, pet_id)

    formated_response = self.__format_response(person_info)
    return formated_response

  def __validadte_name(self, name: str, type_name: str) -> None:
    non_valid_characters = re.compile(r'[^a-zA-Z]')

    if non_valid_characters.search(name):
      raise Exception(f"Invalid {type_name}")

  def __insert_person_in_db(self, first_name: str, last_name: str, age: int, pet_id: int) -> None:
    self.__people_repository.insert_person(first_name, last_name, age, pet_id)

  def __format_response(self, person_info: dict) -> dict:
    return {
      "data": {
        "type": "Person",
        "count": 1,
        "attributes": person_info
      }
    }
