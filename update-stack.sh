# 1. Create EKS Cluster Role
aws cloudformation update-stack\
  --stack-name eks-cluster-role\
  --template-body file://cfn/eks-cluster-role.yml\
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"\
  --region=us-west-2
# 2. Create EKS Cluster VPC
aws cloudformation update-stack\
  --stack-name eks-vpc\
  --template-body file://cfn/eks-vpc.yml\
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"\
  --region=us-west-2

# 3. Create EKS WorkerNode Group Role
aws cloudformation update-stack\
  --stack-name eks-node-group-role\
  --template-body file://cfn/eks-node-group-role.yml\
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"\
  --region=us-west-2