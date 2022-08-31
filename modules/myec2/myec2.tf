# variable "instance_name" {
#     type = string
#     default = "njtest-ec2"
# }

resource "aws_instance" "njtest-ec2" {
  ami           = "ami-089950bc622d39ed8" # Changed to correct region AMI
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}