#!/bin/bash

# Gerando chave ssh
if [ -e "/$JENKINS_HOME/.ssh" ]
   then
      echo "pasta .ssh ja existe!"
   else
      mkdir /$JENKINS_HOME/.ssh
fi

ssh-keygen -t rsa -N "" -f /$JENKINS_HOME/.ssh/$CREATE_PKEY

sshpass -p $PASSWORD_SERVER ssh-copy-id -i /$JENKINS_HOME/.ssh/$CREATE_PKEY.pub $USER_SERVER@$HOST_SERVER
