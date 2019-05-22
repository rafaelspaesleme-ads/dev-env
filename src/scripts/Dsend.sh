#!/bin/bash

chmod -R 777 /$JENKINS_HOME/DevOps/

cd /$JENKINS_HOME

scp -i /$JENKINS_HOME/.ssh/$CREATE_PKEY.pub DevOps/ $USER_SERVER@$HOST_SERVER:/home/$USER_SERVER
