resource "aws_network_acl" "public" {
  vpc_id = "${aws_vpc.public.id}"
}
