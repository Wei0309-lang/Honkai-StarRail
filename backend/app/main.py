from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.staticfiles import StaticFiles
from app.routers import characters, planets
import os

app = FastAPI(title="Honkai: Star Rail Wiki API", version="1.0.0")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:5173", "http://localhost:3000"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

img_path = os.path.join(os.path.dirname(__file__), "..", "..", "img")
if os.path.exists(img_path):
    app.mount("/img", StaticFiles(directory=img_path), name="img")

app.include_router(characters.router)
app.include_router(planets.router)


@app.get("/")
def root():
    return {"message": "Honkai: Star Rail Wiki API", "docs": "/docs"}
