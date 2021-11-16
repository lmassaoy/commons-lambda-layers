#!/usr/bin/env bash
DEST_BUCKET=''
PROFILE=''
STACK_NAME="Commons-Lambda-Layers"
REGION='us-east-1'

if [ -z "$1" ]
  then
    echo "No destination bucket provided. Setting the bucket to: " $DEST_BUCKET
  else
    echo "Setting the destination to: " $1
    DEST_BUCKET=$1
fi

if [ -z "$2" ]
  then
    echo "No profile provided. Setting the profile to: " $PROFILE
  else
    echo "Setting the profile to: " $2
    PROFILE=$2
fi

if [ -z "$3" ]
  then
    echo "No stack name provided. Setting the stack name to: " $STACK_NAME
  else
    echo "Setting the stack name to: " $3
    STACK_NAME=$3
fi

if [ -z "$4" ]
  then
    echo "No region provided. Setting the region to: " $REGION
  else
    echo "Setting the region to: " $4
    REGION=$4
fi

echo "Creating/Updating the Stack into CloudFormation"
aws cloudformation deploy \
    --template-file commons/lambda-layers.packaged.yaml \
    --s3-bucket $DEST_BUCKET \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name $STACK_NAME --profile $PROFILE --region $REGION