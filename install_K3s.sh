#!/bin/bash

# Install k3s
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server --disable traefik,servicelb --write-kubeconfig-mode=644" sh -

# Set up kubectl completion and aliases
kubectl completion bash >> ~/.bashrc
echo "source <(kubectl completion bash)" >> ~/.bashrc
echo "alias k=kubectl" >> ~/.bashrc
echo "complete -o default -F __start_kubectl k" >> ~/.bashrc

# Source the updated .bashrc to apply changes in the current shell
echo "Run the following command to apply the changes: source ~/.bashrc"