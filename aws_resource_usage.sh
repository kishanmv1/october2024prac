#!/bin/bash
#
##############################################
#Author: kishan
#
#date : 28/10/2024
#
#purpose : for aws resource usage
#
##########################################
#AWS Ec2 Instances
#
#AWS S3 Buckets
#
#AWS Lambda Functions
#
#AWS IAM Users
#
#
set -x
set -o
set -e

#LISTING AWS INSTANCES
echo  "print ec2 instance ids"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#Listings s3 buckets
echo "print s3 buckets"
aws s3 ls

#delete ec2 instance
echo "delete ec2 instance"
aws ec2 terminate-instances --instance-id i-0a1a1410cf0223482


