resource "aws_security_group" "vpc-sg-elb" {

	name = "vpc-sg-elb-${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}"
	#(Optional, Forces new resource) The name of the security group. If omitted, Terraform will assign a random, unique name
	
	#name_prefix = ""
	#(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name.
	
	description = "VPC Security Group that controls the inbound and outbound access to Project's (${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}) Elastic Load Balancer (${aws_elb.ec2-elb.id})"
	#(Optional, Forces new resource) The security group description. Defaults to "Managed by Terraform". Cannot be "". NOTE: This field maps to the AWS GroupDescription attribute, for which there is no Update API. If you'd like to classify your security groups in a way that can be updated, use tags.

	#vpc_id = ""
	#(Optional, Forces new resource) The VPC ID.
	
	#tags {}
	#(Optional) A mapping of tags to assign to the resource.
	
	tags {
		Name = "vpc-sg-elb-${var.project_environment}-${var.project_ecosystem}-${var.project_webapplication}"
	}
	
}