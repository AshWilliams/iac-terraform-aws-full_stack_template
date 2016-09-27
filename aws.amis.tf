data "aws_ami" "centos_ami" {

	most_recent = true
	#(Optional) If more than one result is returned, use the most recent AMI.
	
	#executable_users = ["self"]
	#(Optional) Limit search to users with explicit launch permission on the image. Valid items are the numeric account ID or self.
	
	#filter {}
	#(Optional) One or more name/value pairs to filter off of. There are several valid keys, for a full reference, check out describe-images in the AWS CLI reference.

	filter {
		name = "name"
		values = ["CentOS Linux 7 x86_64*"]
	}
	filter {
		name = "platform"
		values = ["Cent OS"]
	}	
	filter {
		name = "architecture"
		values = ["x86_64"]
	}
	filter {
		name = "virtualization-type"
		values = ["hvm"]
	}
	filter {
		name = "description"
		values = ["CentOS Linux 7*"]
	}
	
	#name_regex = "^myami-\\d{3}"
	#(Optional) A regex string to apply to the AMI list returned by AWS. This allows more advanced filtering not supported from the AWS API. This filtering is done locally on what AWS returns, and could have a performance impact if the result is large. It is recommended to combine this with other options to narrow down the list AWS returns.
	
	#owners = ["679593333241"]
	#(Optional) Limit search to specific AMI owners. Valid items are the numeric account ID, amazon, or self.
	
}