rm -rf node_modules
docker build --tag registry.ng.bluemix.net/antonal/kube-demo2:latest .
bx cr login
docker push registry.ng.bluemix.net/antonal/kube-demo2:latest
kubectl create -f kube-all-in-one.yaml
kubectl get service kube-demo2-service
kubectl get nodes
echo Use one of the nodes IP addresses and the port exposed by kube-demo2-service 
