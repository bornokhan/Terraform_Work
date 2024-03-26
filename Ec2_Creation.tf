provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "webserver" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  tags = {
    name = "My_1st_instance_using_terraform"
  }
}