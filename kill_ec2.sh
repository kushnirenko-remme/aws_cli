#!/bin/bash

PROFILE=aws1
REGION="eu-west-2"
INSTANCE_IDS="i-04026de7eff526fd4 i-0544ed733e8942744"
 
aws ec2 terminate-instances \
--profile $PROFILE \
--region $REGION \
--instance-ids $INSTANCE_IDS
