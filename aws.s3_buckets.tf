resource "aws_s3_bucket" "prj-s3_bucket-elb_logs" {

	bucket = "logs-ec2-elb-${var.project_ecosystem}-${var.project_webapplication}"
	#(Required) The name of the bucket.
	#A bucket name cannot contain the character '_'.
	
	acl = "private"
	#(Optional) The canned ACL to apply. Defaults to "private".
	
	force_destroy = "true"
	#(Optional, Default:false ) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable.
}