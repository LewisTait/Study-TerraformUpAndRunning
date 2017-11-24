data "aws_ami" "server2016_ami" {
  most_recent = true
  filter {
    name = "name"
    values = ["Windows_Server-2016-English-Full-Base-*"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["801119661308"]
}

data "aws_ami" "aws_linux_ami" {
  most_recent = true
  filter {
    name = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["137112412989"]
}

data "aws_ami" "ubuntu_linux_ami" {
  most_recent = true
  filter {
    name = "name"
    values = ["*ubuntu-xenial-16.04-amd64-server-*"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name = "root-device-type"
    values = ["ebs"]
  }
  owners = ["099720109477"]
}

data "aws_availability_zones" "all" {}