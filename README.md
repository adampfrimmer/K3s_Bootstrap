# K3s_Bootstrap
This Repo is meant to assist with bootstrapping a K3s Kubernetes single node deployment with ArgoCD.


BRANCH="dev"
curl -fsSL -o "K3s_Bootstrap.tar.gz" "https://github.com/adampfrimmer/K3s_Bootstrap/archive/refs/heads/$BRANCH.tar.gz"
tar -xzf "K3s_Bootstrap.tar.gz" $$ cd K3s_Bootstrap-$BRANCH
chmod 700 install_K3s.sh
./install_K3s.sh
