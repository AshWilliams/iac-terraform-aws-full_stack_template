/*
resource "aws_security_group" "demo-sg" {

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
*/

resource "aws_security_group" "vpc-sg-ec2-elb" {
	name = "vpc-sg-ec2-elb-${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}"
	description = "VPC Security Group controlling access to Project (${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}) Elastic LoadBalancer (${aws_elb.ec2-elb.id})"
	tags {
		Name = "VPC:SG-EC2:ELB-${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}"
		Resource = "ELB"
		ResourceGroup = "EC2"
		Ecosystem = "${var.project_ecosystem}"
		Application = "${var.project_webapplication}"
		Environment = "${var.project_environment}"
	}
}

resource "aws_security_group" "vpc-sg-ec2-inst" {
	name = "vpc-sg-ec2-inst-${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}"
	description = "VPC Security Group controlling access to Project (${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}) EC2 Instances"
	tags {
		Name = "VPC:SG-EC2:INST-${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}"
		Resource = "Instance"
		ResourceGroup = "EC2"
		Ecosystem = "${var.project_ecosystem}"
		Application = "${var.project_webapplication}"
		Environment = "${var.project_environment}"
	}
}