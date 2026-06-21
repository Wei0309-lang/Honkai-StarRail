from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from typing import List, Optional
from app import models, schemas
from app.database import get_db

router = APIRouter(prefix="/api/characters", tags=["characters"])


@router.get("/", response_model=List[schemas.CharacterOut])
def get_all_characters(
    belong: Optional[str] = None,
    attribute: Optional[str] = None,
    pc: Optional[bool] = None,
    db: Session = Depends(get_db),
):
    query = db.query(models.Character)
    if belong:
        query = query.filter(models.Character.belong == belong)
    if attribute:
        query = query.filter(models.Character.attribute == attribute)
    if pc is not None:
        query = query.filter(models.Character.pc == pc)
    return query.all()


@router.get("/{character_id}", response_model=schemas.CharacterOut)
def get_character(character_id: int, db: Session = Depends(get_db)):
    character = db.query(models.Character).filter(models.Character.id == character_id).first()
    if not character:
        raise HTTPException(status_code=404, detail="Character not found")
    return character


@router.get("/name/{name}", response_model=schemas.CharacterOut)
def get_character_by_name(name: str, db: Session = Depends(get_db)):
    character = db.query(models.Character).filter(models.Character.Name == name).first()
    if not character:
        raise HTTPException(status_code=404, detail="Character not found")
    return character
