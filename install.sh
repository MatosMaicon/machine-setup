#Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client

#Create kubectl alias k
echo "alias k='kubectl'" >> ~/.zshrc
echo "source <(kubectl completion zsh)" >> ~/.zshrc
source ~/.zshrc

#Install helm
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
helm version

#Install kind
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
kind version

#Install kustomize
#curl -L https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv5.2.1/kustomize_v5.2.1_linux_amd64.tar.gz | sudo tar xz -C /usr/local/bin
#kustomize version

