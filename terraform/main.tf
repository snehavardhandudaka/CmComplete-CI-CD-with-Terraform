# Define the AWS region variable
variable "aws_region" {
  description = "The AWS region to deploy the resources"
  default     = "us-east-2"
}

# Define the AMI ID variable
variable "ami_id" {
  description = "The AMI ID to use for the instance"
  default     = "ami-0c55b159cbfafe1f0"  # Example AMI, change as needed
}

# Define the instance type variable
variable "instance_type" {
  description = "The instance type to use for the EC2 instance"
  default     = "t2.micro"
}

# Define the key name variable
variable "key_name" {
  description = "The SSH key pair name to use for the instance"
  default     = "TWN.pub"  # Replace with your SSH key name
}
