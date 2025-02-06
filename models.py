# coding: utf-8
from sqlalchemy import Column, DECIMAL, Integer, String
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()
metadata = Base.metadata


class Imovel(Base):
    __tablename__ = 'imoveis'

    id = Column(Integer, primary_key=True)
    nome = Column(String(255), nullable=False)
    imagem = Column(String(255))
    preco_noite = Column(DECIMAL(10, 2), nullable=False)
    localizacao = Column(String(255), nullable=False)

