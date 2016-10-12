resource "aws_vpc" "master" {
  cidr_block = "192.168.10.0/24"
  enable_dns_support    = "true"
  enable_dns_hostnames  = "true"
  enable_classiclink    = "false"
  
	tags {
		Name          = "EFS-Volume-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
		Resource      = "Volume"
		ResourceGroup = "EFS"
		Ecosystem     = "${var.prj_ecosystem}"
		Application   = "${var.prj_application}"
		Environment   = "${var.prj_environment}"
	}
}
