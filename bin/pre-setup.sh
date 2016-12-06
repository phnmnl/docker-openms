#!/usr/bin/env bash

# Generate password for jupyter/luigi
set-password

# Generate ssh-key
echo -e  'n'|ssh-keygen -q -t rsa -N "" -f ../vre.key 1>/dev/null
# (also added private-key parameter in ansible.cfg

# Generate kubeadm token
KubeNow/generate_kubetoken.sh > ../.kubeadm_token