from fastapi import FastAPI, Depends, HTTPException, Query
from fastapi.middleware.cors import CORSMiddleware
from sqlalchemy.orm import Session
from database import get_db
from models import Imovel
from schemas import ImovelSchema
from typing import List, Optional

app = FastAPI()

# Configurando CORS para rodar localmente
app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:3000"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Listar todas as acomodações
@app.get("/acomodacoes", response_model=List[ImovelSchema])
def listar_acomodacoes(cidade: Optional[str] = Query(None), db: Session = Depends(get_db)):
    if cidade:
        return db.query(Imovel).filter(Imovel.localizacao.ilike(f"%{cidade}%")).all()
    return db.query(Imovel).all()

# Obter detalhes de uma acomodação específica por ID
@app.get("/acomodacoes/{id}", response_model=ImovelSchema)
def obter_acomodacao(id: int, db: Session = Depends(get_db)):
    acomodacao = db.query(Imovel).filter(Imovel.id == id).first()
    if not acomodacao:
        raise HTTPException(status_code=404, detail="Acomodação não encontrada")
    return acomodacao
