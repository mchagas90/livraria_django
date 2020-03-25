# #!/bin/bash
set -e
echo 'Configuração inicial do projeto'
python manage.py migrate

echo 'Criando usuário "admin" com senha "admin", para uso do Django Admin'
./manage.py shell -c 'from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser("admin", "admin@admin", "admin")'
echo 'Usuário Admin criado!'
