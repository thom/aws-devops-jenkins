# 2. Create EKS Cluster
aws cloudformation create-stack\
  --stack-name eks-cluster-stack\
  --template-body file://cfn/eks-cluster.yml\
  --parameters file://cfn/eks-cluster-parameters.json \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"\
  --region=us-west-2