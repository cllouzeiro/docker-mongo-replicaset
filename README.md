# docker-mongo-replicaset
Docker com container mongo rodando o replica set

Este docker foi baseando em duas fontes que foram cruciais na implementação do container.
link 1: https://github.com/yowko/docker-compose-mongodb-replica-set-with-auth
link 2: https://stackoverflow.com/questions/57800119/mongodbaccess-main-error-opening-file-mongo-key-txt-bad-file

Passos para rodar o container:

1 - No diretorio raiz do docker-composer.yml rodar o comando que irá gerar a keyfile
  openssl rand -base64 756 > keyfile

2 - Após ser gerada, será necessário mudar o usuario e grupo para que o docker possa fazer a leitura da mesma
  chown -R 999:999 keyfile

3 - Aplicar a permissão correta na chave
  chmod 400 keyfile

4 - No arquivo start.sh adicionar os dados referente ao usuario que será utilizado como root

5 - sh ./start.sh
