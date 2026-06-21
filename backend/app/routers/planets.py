from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from typing import List
from app import models, schemas
from app.database import get_db

router = APIRouter(prefix="/api/planets", tags=["planets"])


@router.get("/", response_model=List[schemas.PlanetOut])
def get_all_planets(db: Session = Depends(get_db)):
    return db.query(models.Planet).all()


@router.get("/{planet_id}", response_model=schemas.PlanetOut)
def get_planet(planet_id: int, db: Session = Depends(get_db)):
    planet = db.query(models.Planet).filter(models.Planet.planet_ID == planet_id).first()
    if not planet:
        raise HTTPException(status_code=404, detail="Planet not found")
    return planet
