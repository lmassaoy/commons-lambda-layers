#!/usr/bin/env bash
DEST_BUCKET=''
PROFILE=''

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

echo 'Building the templates stack'
aws cloudformation package \
    --template-file commons/lambda-layers.yaml \
    --s3-bucket $DEST_BUCKET \
    --output-template-file commons/lambda-layers.packaged.yaml \
    --profile $PROFILE