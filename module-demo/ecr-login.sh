#!/bin/bash
REGION="us-east-2"
AWS_ACCOUNT_ID="<aws_account_id>"

aws ecr get-login-password --region ${REGION} | docker login --username AWS --password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com
