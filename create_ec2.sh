#!/bin/bash

PROFILE=aws1
REGION="eu-west-2"
KEY_NAME="remme-bastion_london"
IMAGE_ID="ami-0d8fe180d98db21dc"
COUNT=1
INSTANCE_TYPE="t2.micro"
SECURITY_GROUP=sg-0c2038c3aec7bf1bc
TAG="node-*"
 
aws ec2 run-instances \
--profile $PROFILE \
--region $REGION \
--key-name $KEY_NAME \
--image-id $IMAGE_ID \
--count $COUNT \
--instance-type $INSTANCE_TYPE
--security-group-ids $SECURITY_GROUP \
--tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$TAG}]"
