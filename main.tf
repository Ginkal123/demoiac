provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0427090fd1714168b" # Replace with your AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "Jenkins-Terraform-EC2-Demo"
  }
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
