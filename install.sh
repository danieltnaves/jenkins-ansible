#!/bin/bash

echo "Executing playbook..."
ansible-playbook provisioning.yml -i hosts --ssh-extra-args="-o IdentitiesOnly=yes"