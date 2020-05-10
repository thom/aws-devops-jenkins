# 1. Create EKS Cluster Role
aws cloudformation create-stack\
  --stack-name eks-cluster-role\
  --template-body file://cfn/eks-cluster-role.yml\
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"\
  --region=us-west-2