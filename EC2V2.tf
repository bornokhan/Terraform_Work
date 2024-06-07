# provider configartion 
provider "aws" {
  access_key = ""
  secret_key = ""
  region = "us-east-1"
}
# Resources config in AWS
resource "aws_instance" "my-server" {
  ami = ""
  instance_type = "t2.micro"
  key_name = "borno-devops-aws"
  vpc_security_group_ids = [ "" ]

  tags {
    name ="hello world"s
  }

# Helloworld App code
  provisioner "remote-exec" {
    connection {
      user = "ec2-user"
      private_key = "${file("/root/.ssh/borno.pem")}"
    }
    inline = [
      "sudo yum install --enablerepo=epel -y nodejs",
      # giving files for helloworld
      "sudo start helloworld",
    ]
  }
}

