#!/bin/bash

# Criando pasta principalcc
mkdir ".$JENKINS_HOME/DevOps"

# Criando subpastas
mkdir ".$JENKINS_HOME/DevOps/projects"
mkdir ".$JENKINS_HOME/DevOps/lib"
mkdir ".$JENKINS_HOME/DevOps/trash"
mkdir ".$JENKINS_HOME/DevOps/docs"
mkdir ".$JENKINS_HOME/DevOps/config"

# Criando pasta de repositorio de projetos
mkdir ".$JENKINS_HOME/DevOps/projects/repositories"
mkdir ".$JENKINS_HOME/DevOps/projects/trash"
mkdir ".$JENKINS_HOME/DevOps/projects/docs"

# Criando workspace
PROJECT_BREAK_DOWN=( `echo ${NOME_PROJECTS} | sed -e 's/[,\/]/ /g'` )

echo $PROJECT_BREAK_DOWN

for ((i=0; i<${#PROJECT_BREAK_DOWN[@]}; ++i))
do
   if [ -e ".$JENKINS_HOME/DevOps/projects/repositories/${PROJECT_BREAK_DOWN[(($i))]}" ]
   then
      echo "O diretorio ${PROJECT_BREAK_DOWN[(($i))]} existe"
   else
      echo "Criando repositório ${PROJECT_BREAK_DOWN[(($i))]}"
      mkdir ".$JENKINS_HOME/DevOps/projects/repositories/${PROJECT_BREAK_DOWN[(($i))]}"
   fi
done
