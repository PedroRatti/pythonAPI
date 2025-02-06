from pydantic import BaseModel
from typing import Optional

class ImovelSchema(BaseModel):
    id: int
    nome: str
    imagem: Optional[str] = None
    preco_noite: float
    localizacao: str

    class Config:
        from_attributes = True