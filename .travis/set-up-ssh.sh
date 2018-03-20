#!/usr/bin/env bash
openssl aes-256-cbc -K $encrypted_98f936accb6c_key -iv $encrypted_98f936accb6c_iv -in .travis/deploy_key.enc -out .travis/deploy_key -d
chmod 600 .travis/deploy_key
mv .travis/deploy_key ~/.ssh/id_rsa
#cat .travis/ssh_config >> ~/.ssh/config