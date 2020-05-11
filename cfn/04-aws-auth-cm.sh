#!/bin/bash
# 4. Enable worker nodes to join your cluster
aws eks --region us-west-2 update-kubeconfig --name EKSCluster-A6ZpCecldqHH
kubectl apply -f aws-auth-cm.yml
kubectl get nodes --watch