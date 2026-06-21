from sqlalchemy import Column, Integer, Unicode, Boolean
from app.database import Base


class Character(Base):
    __tablename__ = "character"

    id = Column(Integer, primary_key=True, index=True)
    Name = Column(Unicode(100), nullable=False)
    belong = Column(Unicode(100))
    photoOfCharacter = Column(Unicode(500))
    url = Column(Unicode(500))
    attribute = Column(Unicode(50))
    pc = Column(Boolean, default=False)


class Planet(Base):
    __tablename__ = "Planet"

    planet_ID = Column(Integer, primary_key=True, index=True)
    planet_Name = Column(Unicode(100), nullable=False)
    photo = Column(Unicode(500))
    goto = Column(Unicode(500))
