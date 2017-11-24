resource "aws_instance" "example" {
  ami  = "${data.aws_ami.ubuntu_linux_ami.id}"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.instance.id}"]
  user_data     = <<-EOF
                  #!/bin/bash
                  echo "Hello, World" > index.html
                  nohup busybox httpd -f -p "${var.server_port}" &
                  EOF
  tags {
      Name = "terraform-example"
  }

  lifecycle {
    create_before_destroy = true
  }
}