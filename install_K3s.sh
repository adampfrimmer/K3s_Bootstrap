#!/bin/sh
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server --disable traefik,servicelb --write-kubeconfig-mode=644" sh -
