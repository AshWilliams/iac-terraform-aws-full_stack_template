resource "aws_route53_zone_association" "private" {
  zone_id = "${aws_route53_zone.domain_prv.zone_id}"
  vpc_id = "${aws_vpc.private.id}"
}
