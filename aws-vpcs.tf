resource "aws_vpc" "public" {
  count                 = "${var.aws_vpc_pub_enabled}"
  cidr_block            = "${var.aws_vpc_pub_cidr_block}"
  enable_dns_support    = "${var.aws_vpc_pub_enable_dns_support}"
  enable_dns_hostnames  = "${var.aws_vpc_pub_enable_dns_hostnames}"
  enable_classiclink    = "${var.aws_vpc_pub_enable_classiclink}"

	tags {
		Name          = "VPC-pub-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    Type          = "Public"
		Resource      = "VPC"
		ResourceGroup = "VPC"
		Ecosystem     = "${var.prj_ecosystem}"
		Application   = "${var.prj_application}"
		Environment   = "${var.prj_environment}"
	}
}
