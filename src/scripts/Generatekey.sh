#!/bin/bash

# Gerando chave ssh
cd ~/.ssh

ssh-keygen -t rsa -N "" -f $CREATE_PKEY

sshpass -p $PASSWORD_SERVER ssh-copy-id -i ~/.ssh/$CREATE_PKEY.pub $USER_SERVER@$HOST_SERVER