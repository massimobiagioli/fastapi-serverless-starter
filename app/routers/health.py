from faker import Faker
from fastapi import APIRouter

router = APIRouter()


@router.get("/health")
async def health():
    fake = Faker()
    name = fake.name()
    
    return {"status": "ok", "name": name}
