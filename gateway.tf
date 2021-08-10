//gateways.tf
resource "aws_internet_gateway" "testtttenv-gw" {
  vpc_id = "${aws_vpc.testtttenv.id}"
tags =  {
    Name = "testtttenv-gw"
  }
}
