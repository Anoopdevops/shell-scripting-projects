#!/bin/bash

######################

# Author: Anoop 
# Date: 05/02/2024
# Version: v1

# This script will report about the usage of aws resources

#####################

set -x

# AWS S3
# AWS LAMBDA
# AWS EC2
# AWS IAM USERS

# list S3 buckets
echo "List of s3 buckets"

aws s3 ls

# list EC2 instances

echo "List of ec2"

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda 

echo "List of lambda functions"

aws lambda list-functions

# list iam users

echo "List of iam-users"

aws iam list-users




