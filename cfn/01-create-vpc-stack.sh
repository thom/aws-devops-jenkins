# 1. Create EKS Cluster VPC
aws cloudformation create-stack\
  --stack-name eks-vpc-stack\
  --template-body file://cfn/eks-vpc.yml\
  --parameters file://cfn/eks-vpc-parameters.json \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"\
  --region=us-west-2