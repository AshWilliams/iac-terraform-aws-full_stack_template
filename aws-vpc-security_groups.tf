resource "aws_security_group" "ec2-elb" {
	name		= "vpc-sg-ec2-elb-${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}"
	description	= "VPC Security Group controlling access to Project (${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}) Elastic LoadBalancer (${aws_elb.ec2-elb.id})"
	tags {
		Name			= "VPC:SG-EC2:ELB-${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}"
		Resource		= "ELB"
		ResourceGroup	= "EC2"
		Ecosystem		= "${var.project_ecosystem}"
		Application		= "${var.project_webapplication}"
		Environment		= "${var.project_environment}"
	}
}

resource "aws_security_group" "ec2-inst" {
	name		= "vpc-sg-ec2-inst-${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}"
	description	= "VPC Security Group controlling access to Project (${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}) EC2 Instances"
	tags {
		Name			= "VPC:SG-EC2:INST-${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}"
		Resource		= "Instance"
		ResourceGroup	= "EC2"
		Ecosystem		= "${var.project_ecosystem}"
		Application		= "${var.project_webapplication}"
		Environment		= "${var.project_environment}"
	}
}

resource "aws_security_group" "elcache-memcached" {
	name		= "vpc-sg-elcache-memc-${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}"
	description	= "VPC Security Group controlling access to Project (${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}) ElastiCache Memcached Cluster"
	tags {
		Name			= "VPC:SG-ElCache:MemC-${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}"
		Resource		= "MemCached"
		ResourceGroup	= "ElastiCache"
		Ecosystem		= "${var.project_ecosystem}"
		Application		= "${var.project_webapplication}"
		Environment		= "${var.project_environment}"
	}
}

resource "aws_security_group" "elcache-redis" {
	name		= "vpc-sg-elcache-redis-${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}"
	description	= "VPC Security Group controlling access to Project (${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}) ElastiCache Redis Cluster"
	tags {
		Name			= "VPC:SG-ElCache:Redis-${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}"
		Resource		= "Redis"
		ResourceGroup	= "ElastiCache"
		Ecosystem		= "${var.project_ecosystem}"
		Application		= "${var.project_webapplication}"
		Environment		= "${var.project_environment}"
	}
}


/*
AWS_SECURITY_GROUP
Provides a security group resource.

resource "aws_security_group" "vpc-sg-demo" {

	#name = ""
	#(Optional, Forces new resource) The name of the security group. If omitted, Terraform will assign a random, unique name
	
	#name_prefix = ""
	#(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name.
	
	#description = ""
	#(Optional, Forces new resource) The security group description. Defaults to "Managed by Terraform". Cannot be "". NOTE: This field maps to the AWS GroupDescription attribute, for which there is no Update API. If you'd like to classify your security groups in a way that can be updated, use tags.

	#vpc_id = ""
	#(Optional, Forces new resource) The VPC ID.
	
	#tags {}
	#(Optional) A mapping of tags to assign to the resource.
	
}

Attributes Reference
The following attributes are exported:

	id			- The ID of the security group
	vpc_id		- The VPC ID.
	owner_id	- The owner ID.
	name		- The name of the security group
	description	- The description of the security group
	ingress		- The ingress rules. See above for more.
	egress		- The egress rules. See above for more.
*/