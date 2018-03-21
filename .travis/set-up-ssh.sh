#!/usr/bin/env bash
openssl aes-256-cbc -K $encrypted_98f936accb6c_key -iv $encrypted_98f936accb6c_iv -in deploy_key.enc -out $TRAVIS_BUILD_DIR/deploy_key -d
eval "$(ssh-agent -s)"
chmod 600 $TRAVIS_BUILD_DIR/deploy_key
ssh-add $TRAVIS_BUILD_DIR/deploy_key
#chmod -R +x .travis
#mv .travis/deploy_key ~/.ssh/id_rsa
#cat .travis/ssh_config >> ~/.ssh/config