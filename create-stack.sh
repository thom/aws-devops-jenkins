# 1. Create EKS Cluster VPC
aws cloudformation create-stack\
  --stack-name eks-vpc\
  --template-body file://cfn/eks-vpc.yml\
  --parameters file://cfn/parameters.json \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"\
  --region=us-west-2

# 2. Create EKS Cluster
aws cloudformation create-stack\
  --stack-name eks-cluster\
  --template-body file://cfn/eks-cluster.yml\
  --parameters file://cfn/parameters.json \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"\
  --region=us-west-2

# 3. Create EKS Node Group
aws cloudformation create-stack\
  --stack-name eks-node-group\
  --template-body file://cfn/eks-node-group.yml\
  --parameters file://cfn/eks-node-group-parameters.json \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"\
  --region=us-west-2