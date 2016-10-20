resource "aws_security_group" "ec2-elb" {
	name		= "vpc-sg-ec2-elb-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
	description	= "VPC Security Group controlling access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) Elastic LoadBalancer"
	vpc_id = "${aws_vpc.public.id}"
	tags {
		Name			= "VPC:SG-EC2:ELB-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
		Resource		= "ELB"
		ResourceGroup	= "EC2"
		Ecosystem		= "${var.prj_ecosystem}"
		Application		= "${var.prj_application}"
		Environment		= "${var.prj_environment}"
	}
}

resource "aws_security_group" "ec2-inst" {
	name		= "vpc-sg-ec2-inst-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
	description	= "VPC Security Group controlling access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) EC2 Instances"
	vpc_id = "${aws_vpc.public.id}"
	tags {
		Name			= "VPC:SG-EC2:Inst-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
		Resource		= "Instances"
		ResourceGroup	= "EC2"
		Ecosystem		= "${var.prj_ecosystem}"
		Application		= "${var.prj_application}"
		Environment		= "${var.prj_environment}"
	}
}

resource "aws_security_group" "elcache-memcached" {
	name		= "vpc-sg-elcache-memc-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
	description	= "VPC Security Group controlling access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) ElastiCache Memcached Cluster"
	vpc_id = "${aws_vpc.public.id}"
	tags {
		Name			= "VPC:SG-ElCache:MemC-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
		Resource		= "MemCached"
		ResourceGroup	= "ElastiCache"
		Ecosystem		= "${var.prj_ecosystem}"
		Application		= "${var.prj_application}"
		Environment		= "${var.prj_environment}"
	}
}

resource "aws_security_group" "elcache-redis" {
	name		= "vpc-sg-elcache-redis-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
	description	= "VPC Security Group controlling access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) ElastiCache Redis Cluster"
	vpc_id = "${aws_vpc.public.id}"
	tags {
		Name			= "VPC:SG-ElCache:Redis-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
		Resource		= "Redis"
		ResourceGroup	= "ElastiCache"
		Ecosystem		= "${var.prj_ecosystem}"
		Application		= "${var.prj_application}"
		Environment		= "${var.prj_environment}"
	}
}

resource "aws_security_group" "efs-mounts" {
	name		= "vpc-sg-efs-mnt-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
	description	= "VPC Security Group controlling access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) EFS Mount Targets"
	vpc_id = "${aws_vpc.public.id}"
	tags {
		Name			= "VPC:SG-EFS:mnt-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
		Resource		= "Mount Targets"
		ResourceGroup	= "EFS - Elastic File System"
		Ecosystem		= "${var.prj_ecosystem}"
		Application		= "${var.prj_application}"
		Environment		= "${var.prj_environment}"
	}
}

resource "aws_security_group" "rds-instances" {
	name		= "vpc-sg-rds-inst-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
	description	= "VPC Security Group controlling access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) RDS DB Instances"
	vpc_id = "${aws_vpc.public.id}"
	tags {
		Name			= "VPC:SG-RDS:Inst-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
		Resource		= "DB Instances"
		ResourceGroup	= "RDS - Relational Database Service"
		Ecosystem		= "${var.prj_ecosystem}"
		Application		= "${var.prj_application}"
		Environment		= "${var.prj_environment}"
	}
}

resource "aws_security_group" "ec2-inst-bal_offices_access" {
	name		= "vpc-sg-ec2-inst-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}-office-acc"
	description	= "VPC Security Group controlling Office Access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) EC2 Instances"
	vpc_id = "${aws_vpc.public.id}"
	tags {
		Name			= "VPC:SG-EC2:Inst-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}-office-acc"
		Resource		= "Instances"
		ResourceGroup	= "EC2"
		Ecosystem		= "${var.prj_ecosystem}"
		Application		= "${var.prj_application}"
		Environment		= "${var.prj_environment}"
	}
}

resource "aws_security_group" "ec2-inst-remote_access" {
	name		= "vpc-sg-ec2-inst-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}-rm-acc"
	description	= "VPC Security Group controlling Remote Access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) EC2 Instances"
	vpc_id = "${aws_vpc.public.id}"
	tags {
		Name			= "VPC:SG-EC2:Inst-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}-rm-acc"
		Resource		= "Instances"
		ResourceGroup	= "EC2"
		Ecosystem		= "${var.prj_ecosystem}"
		Application		= "${var.prj_application}"
		Environment		= "${var.prj_environment}"
	}
}
