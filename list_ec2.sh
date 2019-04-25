#!/bin/bash

PROFILE=aws1
REGION="eu-west-2"
TAG=node-*
 
aws ec2 describe-instances \
 --profile $PROFILE \
 --region $REGION \
 --filters "Name=tag:Name,Values=$TAG" \
 --query 'Reservations[].Instances[].[PublicIpAddress,InstanceId,Tags[?Key==`Name`].Value[]]' --output text | sed '$!N;s/\n/ /'
