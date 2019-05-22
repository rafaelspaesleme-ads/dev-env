#!/bin/bash

chmod -R 777 DevOps/

scp -i ~/.ssh/$CREATE_PKEY.pub -r DevOps/ $USER_SERVER@$HOST_SERVER:/home/$USER_SERVER
