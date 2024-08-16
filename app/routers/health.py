from faker import Faker
from fastapi import APIRouter

router = APIRouter()


@router.get("/health")
async def health():    
    return {"status": "ok"}


@router.get("/fake")
async def fake():
    fake = Faker()
    name = fake.name()
    
    return {"name": name}
