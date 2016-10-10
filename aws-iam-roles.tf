resource "aws_iam_role" "codedeploy" {
  name = "iam-role-dtcd-${var.prj_ecosystem}-${var.prj_application}-${var.prj_environment}"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}