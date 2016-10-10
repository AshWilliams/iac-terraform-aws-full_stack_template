resource "aws_iam_user_policy" "prj-iam_cuplc" {

	name = "iam-cup-ec2-${var.prj_ecosystem}-${var.prj_application}"
	#(Required) Name of the policy.
	
	user = "${aws_iam_user.prj_user.name}"
	#(Required) IAM user to which to attach this policy.
	
	
	#policy =
	#(Required) The policy document. This is a JSON formatted string. The heredoc syntax or file function is helpful here.
	policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_user_policy" "prj-iam-cup-dtcd" {
  name = "iam-cup-dtcd-${var.prj_ecosystem}-${var.prj_application}-${var.prj_environment}"
  user = "${aws_iam_user.prj_user.name}"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "autoscaling:CompleteLifecycleAction",
        "autoscaling:DeleteLifecycleHook",
        "autoscaling:DescribeAutoScalingGroups",
        "autoscaling:DescribeLifecycleHooks",
        "autoscaling:PutLifecycleHook",
        "autoscaling:RecordLifecycleActionHeartbeat",
        "ec2:DescribeInstances",
        "ec2:DescribeInstanceStatus",
        "tag:GetTags",
        "tag:GetResources",
        "sns:Publish",
        "cloudwatch:DescribeAlarms"
      ],
      "Resource": "*"
    }
  ]
}
EOF

}