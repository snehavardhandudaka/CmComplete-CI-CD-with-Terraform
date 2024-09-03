variable "aws_region" {
  description = "The AWS region to deploy the resources"
  default     = "us-east-2"
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance"
  default     = "t2.micro"
}

variable "key_name" {
  description = "The SSH key pair name to use for the instance"
  default     = "TWN.pub"
}

