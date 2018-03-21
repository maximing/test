#!/usr/bin/env bash
openssl aes-256-cbc -K $encrypted_98f936accb6c_key -iv $encrypted_98f936accb6c_iv -in deploy_key.enc -out deploy_key -d
#eval "$(ssh-agent -s)"
#chmod 600 .travis/deploy_key
#ssh-add .travis/deploy_key
#chmod -R +x .travis
##mv .travis/deploy_key ~/.ssh/id_rsa
##cat .travis/ssh_config >> ~/.ssh/config
#ssh deploy@79.137.75.144 'echo 1 > /home/deploy/test.txt'