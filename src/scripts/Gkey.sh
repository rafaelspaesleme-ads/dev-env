#!/bin/bash

# Gerando chave ssh
if [ -e "~/.ssh" ]
   then
      echo "pasta .ssh ja existe!"
   else
      mkdir ~/.ssh
fi

ssh-keygen -t rsa -N "" -f ~/.ssh/$CREATE_PKEY

sshpass -p $PASSWORD_SERVER cat ~/.ssh/$CREATE_PKEY.pub | ssh $USER_SERVER@$HOST_SERVER 'cat >> .ssh/authorized_keys && echo "Chave copiada."'
