resource "aws_security_group" "vpc-ec2-elb" {
  count       = "${var.aws_vpc_app_enabled}"
  vpc_id      = "${aws_vpc.app.id}"
  
  name        = "vpc-sg-ec2-elb-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
  description = "VPC Security Group controlling access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) Elastic LoadBalancer"
  tags {
    Name          = "VPC::SG::EC2::ELB::${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    Resource      = "ELB"
    ResourceGroup = "EC2"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}

resource "aws_security_group" "vpc-ec2-inst" {
  count       = "${var.aws_vpc_app_enabled}"
  vpc_id      = "${aws_vpc.app.id}"
  
  name        = "vpc-sg-ec2-inst-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
  description = "VPC Security Group controlling access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) EC2 Instances"
  
  tags {
    Name          = "VPC::SG::EC2::INST::${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    Resource      = "Instances"
    ResourceGroup = "EC2"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}

resource "aws_security_group" "vpc-elcache-memcached" {
  count       = "${var.aws_vpc_app_enabled}"
  vpc_id      = "${aws_vpc.app.id}"
  
  name        = "vpc-sg-elcache-memc-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
  description = "VPC Security Group controlling access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) ElastiCache Memcached Cluster"
  
  tags {
    Name          = "VPC::SG::ElCache::MemC::${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    Resource      = "MemCached"
    ResourceGroup = "ElastiCache"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}

resource "aws_security_group" "vpc-elcache-redis" {
  count       = "${var.aws_vpc_app_enabled}"
  vpc_id      = "${aws_vpc.app.id}"
  
  name        = "vpc-sg-elcache-redis-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
  description = "VPC Security Group controlling access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) ElastiCache Redis Cluster"
  
  tags {
    Name          = "VPC::SG::ElCache::Redis::${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    Resource      = "Redis"
    ResourceGroup = "ElastiCache"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}

resource "aws_security_group" "vpc-efs-mounts" {
  count       = "${var.aws_vpc_app_enabled}"
  vpc_id      = "${aws_vpc.app.id}"
  
  name        = "vpc-sg-efs-mnt-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
  description = "VPC Security Group controlling access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) EFS Mount Targets"
  
  tags {
    Name          = "VPC::SG::EFS::MNT::${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    Resource      = "Mount Targets"
    ResourceGroup = "EFS - Elastic File System"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}

resource "aws_security_group" "vpc-rds-instances" {
  count       = "${var.aws_vpc_app_enabled}"
  vpc_id      = "${aws_vpc.app.id}"
  
  name        = "vpc-sg-rds-inst-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
  description = "VPC Security Group controlling access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) RDS DB Instances"
  
  tags {
    Name          = "VPC::SG::RDS::INST::${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    Resource      = "DB Instances"
    ResourceGroup = "RDS - Relational Database Service"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}

resource "aws_security_group" "vpc-ec2-inst-bal_offices_access" {
  count       = "${var.aws_vpc_app_enabled}"
  vpc_id      = "${aws_vpc.app.id}"
  
  name        = "vpc-sg-ec2-inst-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}-office-acc"
  description = "VPC Security Group controlling Office Access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) EC2 Instances"
  
  tags {
    Name          = "VPC::SG::EC2::INST::${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}-office-acc"
    Resource      = "Instances"
    ResourceGroup = "EC2"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}

resource "aws_security_group" "vpc-ec2-inst-remote_access" {
  count       = "${var.aws_vpc_app_enabled}"
  vpc_id      = "${aws_vpc.app.id}"
  
  name        = "vpc-sg-ec2-inst-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}-rm-acc"
  description = "VPC Security Group controlling Remote Access to Project (${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}) EC2 Instances"
  
  tags {
    Name          = "VPC::SG::EC2::INST::${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}-rm-acc"
    Resource      = "Instances"
    ResourceGroup = "EC2"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}
