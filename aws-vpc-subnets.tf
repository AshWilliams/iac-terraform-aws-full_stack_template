resource "aws_subnet" "pub01" {
  count             = "${var.aws_vpc_sub_pub01_enabled}"
  vpc_id            = "${aws_vpc.public.id}"
  cidr_block        = "${var.aws_vpc_subnet_pub01_cidr_block}"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"
  
  map_public_ip_on_launch = "true"
  
  tags {
    Name          = "VPC-SUB-Pub01-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.available.names[0]}"
    Type          = "Public"
    Resource      = "Subnets"
    ResourceGroup = "VPC"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}

resource "aws_subnet" "pub02" {
  count             = "${var.aws_vpc_sub_pub02_enabled}"
  vpc_id            = "${aws_vpc.public.id}"
  cidr_block        = "${var.aws_vpc_subnet_pub02_cidr_block}"
  availability_zone = "${data.aws_availability_zones.available.names[1]}"
  
  map_public_ip_on_launch = "true"
  
  tags {
    Name          = "VPC-SUB-Pub02-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.available.names[1]}"
    Type          = "Public"
    Resource      = "Subnets"
    ResourceGroup = "VPC"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}

resource "aws_subnet" "pub03" {
  count             = "${var.aws_vpc_sub_pub03_enabled}"
  vpc_id            = "${aws_vpc.public.id}"
  cidr_block        = "${var.aws_vpc_subnet_pub03_cidr_block}"
  availability_zone = "${data.aws_availability_zones.available.names[2]}"
  
  map_public_ip_on_launch = "true"
  
  tags {
    Name          = "VPC-SUB-Pub03-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.available.names[2]}"
    Type          = "Public"
    Resource      = "Subnets"
    ResourceGroup = "VPC"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}
