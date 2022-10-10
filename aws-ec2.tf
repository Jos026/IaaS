variable "ami-id"{
  type = string
  description = "Imagen base OS EC2"
}

resource "aws_instance" "ec1" {
  # Block body
  ami = var.ami-id
  instance_type = "t2.micro"

  tags = {
    "Name" = "Automated-Server"
  }
}