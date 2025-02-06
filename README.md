# Python API - Gerenciamento de imóveis

Esta API foi desenvolvida utilizando **FastAPI** para facilitar o gerenciamento de acomodações.  
Ela oferece endpoints para recuperar todas as acomodações cadastradas, buscar acomodações por **ID** e **filtrar por cidade**.

# Como rodar a API localmente

>Clonar repositório

git clone https://github.com/PedroRatti/pythonAPI.git cd seu-repositorio

>Criar e ativar o ambiente virtual

python -m venv .venv 
source .venv/bin/activate # Mac/Linux 
.venv\Scripts\activate

>Instalar dependências

pip install -r requirements.txt

>Rodar a API

uvicorn main:app --reload

## Rodar com o Docker

>Construir a imagem Docker

docker build -t pythonAPI .

>Rodar o container

docker run -p 8000:8000 pythonAPI

## Endpoints

|Método                |Endpoint                         |Descrição                        |
|----------------|-------------------------------|-----------------------------|
|GET			 |/acomodacoes            |Lista todas as acomodações            |
|GET             |/acomodacoes?cidade={cidade desejada}            |Retorna as acomodações de acordo com a cidade escolhida            |
|GET             |/acomodacoes/{id}|Retorna a acomodação que possui o ID pesquisado|


