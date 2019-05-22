#!/bin/bash

tar -czvf backup_$RANDOM.tar.gz DevOps

chmod 750 backup_$RANDOM.tar.gz

mkdir /tmp/DevOps
mkdir /tmp/DevOps/backups

mv $NOME_BACKUP.tar.gz /tmp/DevOps/backups

# status do backup
echo "Backup concluído!"

# diretório de origem
echo "Diretório salvo: home/$USER/DevOps"

# destino do backup
echo "Destino do backup: /tmp/DevOps/backups"

chmod -R 777 DevOps/

rm -R DevOps/