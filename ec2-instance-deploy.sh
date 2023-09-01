#!/bin/bash

# AWS Configuration
REGION="us-east-1"
INSTANCE_TYPE="t2.micro"
AMI_ID="ami-12345678"  # Replace with your desired AMI ID
KEY_PAIR="your-key-pair"
SECURITY_GROUP="your-security-group"

# Create EC2 instance
INSTANCE_ID=$(aws ec2 run-instances \
  --region $REGION \
  --image-id $AMI_ID \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_PAIR \
  --security-groups $SECURITY_GROUP \
  --query "Instances[0].InstanceId" \
  --output text)

if [ -z "$INSTANCE_ID" ]; then
  echo "Instance creation failed."
  exit 1
fi

echo "Instance $INSTANCE_ID created successfully."

# Retrieve instance public IP address
PUBLIC_IP=$(aws ec2 describe-instances \
  --region $REGION \
  --instance-ids $INSTANCE_ID \
  --query "Reservations[0].Instances[0].PublicIpAddress" \
  --output text)

if [ -z "$PUBLIC_IP" ]; then
  echo "Failed to retrieve instance IP address."
  exit 1
fi

echo "Instance public IP: $PUBLIC_IP"

# Wait for instance to be running
echo "Waiting for the instance to be running..."
aws ec2 wait instance-running --region $REGION --instance-ids $INSTANCE_ID

echo "Instance is now running."

# SSH Command
SSH_COMMAND="ssh -i $KEY_PAIR.pem ec2-user@$PUBLIC_IP"

echo "You can now SSH into the instance using the following command:"
echo "$SSH_COMMAND"

# Additional actions (e.g., software installation, configuration, etc.) can be added here

