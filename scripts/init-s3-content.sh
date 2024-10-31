#!/bin/bash
# Script to initialize S3 bucket structure
BUCKET_NAME=$1

if [ -z "$BUCKET_NAME" ]; then
    echo "Please provide bucket name as argument"
    exit 1
fi

# Create basic folder structure
aws s3api put-object --bucket $BUCKET_NAME --key courses/
aws s3api put-object --bucket $BUCKET_NAME --key assignments/
aws s3api put-object --bucket $BUCKET_NAME --key resources/
