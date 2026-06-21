from sqlalchemy import Column, Integer, String, Boolean
from app.database import Base


class Character(Base):
    __tablename__ = "character"

    id = Column(Integer, primary_key=True, index=True)
    Name = Column(String(100), nullable=False)
    belong = Column(String(100))
    photoOfCharacter = Column(String(500))
    url = Column(String(500))
    attribute = Column(String(50))
    pc = Column(Boolean, default=False)


class Planet(Base):
    __tablename__ = "Planet"

    planet_ID = Column(Integer, primary_key=True, index=True)
    planet_Name = Column(String(100), nullable=False)
    photo = Column(String(500))
    goto = Column(String(500))
