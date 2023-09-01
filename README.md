
# EC2 Instance Deployment Script

Automate the deployment of Amazon EC2 instances using this Bash script. The script leverages the AWS Command Line Interface (CLI) to streamline the creation of EC2 instances, allowing you to specify instance types, Amazon Machine Images (AMIs), key pairs, and security groups.

## Features

- Automated EC2 instance deployment on AWS.
- Customizable instance parameters such as instance type, AMI, key pair, and security group.
- Retrieves and displays the public IP address of the newly created instance.
- Provides a ready-to-use SSH command for convenient instance access.

## Prerequisites

Before using the script, ensure you have the following:

1. Installed and configured the [AWS Command Line Interface (CLI)](https://aws.amazon.com/cli/).
2. An AWS key pair for SSH access to the instance.
3. A security group configured with necessary inbound rules for SSH.

## Usage

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/yourusername/ec2-instance-deployment-script.git
