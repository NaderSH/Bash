
# kubectl get pods [pod-name-here] -n [namespace] -o jsonpath='{.spec.containers[*].name}*'

kubectl get pods try1-6b7957bbc5-zstvh -n default -o jsonpath='{.spec.containers[*].name}*'


kubectl get pods redis-bootstrap -n redis-cluster -o jsonpath='{.spec.containers[*].name}*'
kubectl describe pods redis-bootstrap -n redis-cluster


kubectl describe pods try1-6b7957bbc5-zstvh -n default