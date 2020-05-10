# 1. Create EKS Cluster VPC
aws cloudformation update-stack\
  --stack-name eks-vpc\
  --template-body file://cfn/eks-vpc.yml\
  --parameters file://cfn/parameters.json \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"\
  --region=us-west-2

# 2. Create EKS WorkerNode Group Role
aws cloudformation update-stack\
  --stack-name eks-node-group-role\
  --template-body file://cfn/eks-node-group-role.yml\
  --parameters file://cfn/parameters.json \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"\
  --region=us-west-2

# 3. Create EKS Cluster
aws cloudformation update-stack\
  --stack-name eks-cluster\
  --template-body file://cfn/eks-cluster.yml\
  --parameters file://cfn/parameters.json \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"\
  --region=us-west-2