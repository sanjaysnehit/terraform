provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "test-ec2-instance" {
  ami = "${var.ami_id}"
  instance_type = "t2.micro"
  key_name = "${var.ami_key_pair_name}"
  security_groups = ["${aws_security_group.ingress-all-test.id}"]
  user_data = "${file("install_nginx.sh")}"
tags =  {
    Name = "${var.ami_name}"
  }
subnet_id = "${aws_subnet.subnet-uno.id}"
}
