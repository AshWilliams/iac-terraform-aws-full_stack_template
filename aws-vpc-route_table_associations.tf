resource "aws_route_table_association" "rta_public" {
  count           = "${var.aws_vpc_pub_enabled * var.aws_vpc_pub_subnets_count}"
  subnet_id       = "${aws_subnet.pub_vpc_subnets[count.index]}"
  route_table_id  = "${aws_route_table.public.id}"
}
