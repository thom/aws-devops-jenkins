# 3. Create EKS Node Group
aws cloudformation create-stack\
  --stack-name eks-node-group-stack\
  --template-body file://cfn/eks-node-group.yml\
  --parameters file://cfn/eks-node-group-parameters.json \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"\
  --region=us-west-2