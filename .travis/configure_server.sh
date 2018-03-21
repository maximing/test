#!/usr/bin/env bash

#### Create deploy user ####
DEPLOY_USER="deploy2"
DEPLOY_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJFA9/ot98J4ws2ZzOkT0pbNNqOvR0e6PhoKjKadAEY3mGAsX9nRR1YP4Wvpr80zq3WxjkTQD1Z2j9dE9fxYmJPzpt+O9PIXiv8lE4Y530PGEoEpKpsGckYBn3VksdMCN6Ezv/CaVvwG23jzzuK6kz8lNlO/NwMKsxt3pNBSOaWNZ8Y2Iqgbwl2bg97BOUbMjuHdkYzkhmosjtLA5rXpt9WCVHXT4nYOf9o3ExR1bpNsoZqluWzXrUPZHcl5187IQV0OXAB5eeIQR3vpNoqLWQ3e5fHkKGNDT5xoggoIIvWxkOgYnA3MZeMbEUlP5Qfdq/Qxt6EEuoHRJefIzRbBEZ deploy"

# Create Home Directory + .ssh Directory
mkdir -p /home/$DEPLOY_USER/.ssh

# Create Authorized Keys File
touch /home/$DEPLOY_USER/.ssh/authorized_keys
echo $DEPLOY_KEY > /home/$DEPLOY_USER/.ssh/authorized_keys

# Create User + Set Home Directory
useradd -d /home/$DEPLOY_USER $DEPLOY_USER

# Add User to sudo Group
usermod -aG sudo $DEPLOY_USER

# Set Permissions
chown -R $DEPLOY_USER:$DEPLOY_USER /home/$DEPLOY_USER/
chown root:root /home/$DEPLOY_USER
chmod 700 /home/$DEPLOY_USER/.ssh
chmod 644 /home/$DEPLOY_USER/.ssh/authorized_keys