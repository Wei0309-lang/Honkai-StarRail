from pydantic import BaseModel, ConfigDict
from typing import Optional


class CharacterBase(BaseModel):
    Name: str
    belong: Optional[str] = None
    photoOfCharacter: Optional[str] = None
    url: Optional[str] = None
    attribute: Optional[str] = None
    pc: Optional[bool] = False


class CharacterOut(CharacterBase):
    id: int
    model_config = ConfigDict(from_attributes=True)


class PlanetBase(BaseModel):
    planet_Name: str
    photo: Optional[str] = None
    goto: Optional[str] = None


class PlanetOut(PlanetBase):
    planet_ID: int
    model_config = ConfigDict(from_attributes=True)
