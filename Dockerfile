#inagem base ou inicial
FROM node:18.11.0
# directorio de trabalho no container
WORKDIR /app
# instalar os pacotes do nodejs, sendo npm a ferramenta gerenciamento dos pacotes

# copiando o package-lock.json e o package.json para o directorio corrente
COPY package*.json ./
# executando o comando para baixar para o container essas dependencias
RUN npm install 
# transfereindo os restantes documentos para o container e fazendo uso da tecnologia de camadas
COPY . .
# expondo a porta 8080, que e' identica da apresentada em server.js: app.listen(8080)
EXPOSE 8080
# comando de inicializacao do node
CMD ["node", "server.js"]
#docker build -t cabicho/iniciativaDevOps#10#conversaoTemperatura:v1 .