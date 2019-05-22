#!/bin/bash

if [ -e "./$JENKINS_HOME/DevOps" ]
then
echo "Excluindo repositorio antigo DevOps"
rm -R ./$JENKINS_HOME/DevOps
else
echo "O diretorio DevOps nao existe"
fi
