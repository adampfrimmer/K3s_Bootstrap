#!/bin/sh
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server --disable traefik,servicelb --write-kubeconfig-mode=644" sh -

source <(kubectl completion bash) # set up autocomplete in bash into the current shell, bash-completion package should be installed first.
echo "source <(kubectl completion bash)" >> ~/.bashrc # add autocomplete permanently to your bash shell.

echo "alias k=kubectl" >> ~/.bashrc # add kubectl alias permanently to your bash shell.

echo "complete -o default -F __start_kubectl k" >> ~/.bashrc # add enable completion to work with alias permanently to your bash shell.