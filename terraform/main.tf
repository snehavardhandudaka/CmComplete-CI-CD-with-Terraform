provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example AMI, change as needed
  instance_type = "t2.micro"
  key_name      = "TWN.pub"  # Replace with your SSH key name

  tags = {
    Name = "Jenkins-CI-CD-Server"
  }
}

output "instance_public_ip" {
  value = aws_instance.app_server.public_ip
}

