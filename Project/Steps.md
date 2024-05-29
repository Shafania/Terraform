# 1. Install Terraform
First, ensure that Terraform is installed on your system. You can download it from the Terraform website and follow the installation instructions for your operating system.

# 2. Configure AWS CLI
Ensure you have the AWS CLI installed and configured with your AWS credentials. You can download it from the AWS CLI website. Use the following command to configure it:

aws configure
Enter your AWS Access Key ID, Secret Access Key, region, and output format when prompted.

# 3. Create a Terraform Configuration File
Create a directory for your Terraform project and create a main configuration file, typically named main.tf.

#4. Write the Terraform Code
Here is an example of Terraform code using the AWS provider to create an S3 bucket.

#main.tf

# Specify the required version of Terraform
terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS provider
provider "aws" {
  region = "us-west-2" # Change to your desired region
}

# Create an S3 bucket
resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-unique-bucket-name" # Change to a unique bucket name
  acl    = "private"
}

# Output the bucket name
output "bucket_name" {
  value = aws_s3_bucket.example_bucket.bucket
}

#5. Initialize Terraform
Initialize your Terraform configuration. This will download the AWS provider plugin.

terraform init

#6. Validate the Configuration
Validate your Terraform configuration to ensure there are no syntax errors.

terraform validate

#7. Plan the Deployment
Generate an execution plan to see what actions Terraform will take.

terraform plan

#8. Apply the Configuration
Apply the configuration to create the resources on AWS.

terraform apply
Type yes when prompted to confirm the changes.

#9. Verify the Resources
After applying, you can verify the resources in the AWS Management Console.

Additional Resources
Terraform AWS Provider Documentation
Terraform Documentation
