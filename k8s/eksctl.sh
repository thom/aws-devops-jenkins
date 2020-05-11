#!/bin/bash

eksctl create cluster \
  --name capstone-project \
  --version 1.15 \
  --nodegroup-name workers \
  --node-type t2.micro \
  --nodes 2 \
  --nodes-min 1 \
  --nodes-max 3 \
  --node-ami auto \
  --region us-west-2 \
  --zones us-west-2a \
  --zones us-west-2b \
  --zones us-west-2c