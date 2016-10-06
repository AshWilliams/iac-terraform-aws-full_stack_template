resource "aws_s3_bucket_policy" "elb_logs" {

	bucket = "${aws_s3_bucket.elb_logs.id}"
	#(Required) The name of the bucket to which to apply the policy.
	
	#policy - (Required) The text of the policy.
	policy = <<POLICY
{
  "Id": "Policy",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::${aws_s3_bucket.elb_logs.id}/${var.prj_environment}/AWSLogs/${data.aws_caller_identity.aws_account_id.account_id}/*",
      "Principal": {
        "AWS": [
          "${data.aws_elb_service_account.aws_elb_account_id.id}"
        ]
      }
    }
  ]
}
POLICY

}