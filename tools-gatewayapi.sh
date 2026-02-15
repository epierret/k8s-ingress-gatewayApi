#!/usr/bin

#installation des crds 
kubectl apply -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v1.0.0/standard-install.yaml

# installation nginx-class
helm repo add ngf https://nginxinc.github.io/nginx-gateway-fabric
helm repo update

helm install ngf ngf/nginx-gateway-fabric \
  -n nginx-gateway \
  --create-namespace
