
resource "aws_vpc" "testtttenv" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
 tags =  {
    Name = "testtttenv"
  }
}
resource "aws_eip" "ip-testtttenv" {
  instance = "${aws_instance.test-ec2-instance.id}"
  vpc      = true
}
