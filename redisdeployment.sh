kubectl get nodes

kubectl apply -f redis-sts.yaml

kubectl apply -f redis-svc.yaml

kubectl get pods

kubectl get pv

kubectl describe pods redis-cluster-0 | grep pvc

kubectl exec -it redis-cluster-0 -- redis-cli --cluster create --cluster-replicas 1 $(kubectl get pods -l app=redis-cluster -o jsonpath='{range.items[*]}{.status.podIP}:6379 ')


kubectl exec -it redis-cluster-0 -- redis-cli cluster info

kubectl exec -it redis-cluster-0 -- redis-cli role

kubectl exec -it redis-cluster-1 -- redis-cli role

kubectl exec -it redis-cluster-2 -- redis-cli role

kubectl exec -it redis-cluster-3 -- redis-cli role

kubectl exec -it redis-cluster-4 -- redis-cli role

kubectl exec -it redis-cluster-5 -- redis-cli role