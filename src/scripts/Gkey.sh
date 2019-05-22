#!/bin/bash

# Gerando chave ssh
if [ -e "~/.ssh" ]
   then
      echo "pasta .ssh ja existe!"
   else
      mkdir ~/.ssh
fi

ssh-keygen -t rsa -N "" -f ~/.ssh/$CREATE_PKEY

sshpass -p $PASSWORD_SERVER ssh-copy-id -i ~/.ssh/$CREATE_PKEY.pub $USER_SERVER@$HOST_SERVER
