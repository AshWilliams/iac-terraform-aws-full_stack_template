resource "aws_s3_bucket" "prj-s3_bucket-elb_logs" {

	bucket = "logs-ec2_elb-${var.project_ecosystem}-${var.project_webapplication}"
	#(Required) The name of the bucket.
	
	acl = "log-delivery-write"
	#(Optional) The canned ACL to apply. Defaults to "private".
}