!#/bin/bash
# 4. Enable worker nodes to join your cluster
aws eks --region us-west-2 update-kubeconfig --name EKSCluster-K2C0YJs3qYCP
kubectl apply -f aws-auth-cm.yml
kubectl get nodes --watch
