Para iniciar o projeto execute:

docker-compose up

Como o docker iniciado, execute (em outra aba do terminal) o seguinte comando:

docker-compose exec web bash -c "./entrypoint.sh"

Esse comando fará com que as migrations sejam executadas e um usuário de nome e senha 'admin' seja criado.