resource "aws_security_group_rule" "allow_all" {

	type = "ingress"
	#(Required) The type of rule being created. Valid options are ingress (inbound) or egress (outbound).

	cidr_blocks = ["0.0.0.0/0"]
	#(Optional) List of CIDR blocks. Cannot be specified with source_security_group_id.

	protocol = "tcp"
	#(Required) The protocol.
	
	from_port = 0
	#(Required) The start port (or ICMP type number if protocol is "icmp").
	
	to_port = 65535
	#(Required) The end range port (or ICMP code if protocol is "icmp").


	prefix_list_ids = ["pl-12c4e678"]
	#(Optional) List of prefix list IDs (for allowing access to VPC endpoints). Only valid with egress.
	
	security_group_id = "sg-123456"
	#security_group_id - (Required) The security group to apply this rule to.
	
	#source_security_group_id = ""
	#(Optional) The security group id to allow access to/from, depending on the type. Cannot be specified with cidr_blocks.
	
	#self = ""
	#(Optional) If true, the security group itself will be added as a source to this ingress rule.	
	
}