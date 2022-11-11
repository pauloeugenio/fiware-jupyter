# fiware-jupyter

docker build -t fiware-ml .

#Na sequencia iremos aplicar o comando para iniciar o nosso container:
docker run -d --rm --name jupyterserver -p 8888:8888 -v "$PWD/notebooks:/home/notebooks" fiware-ml


#Para visualizar os logs do container e conseguir capturar a chave api do jupyter
docker container logs jupyterserver
