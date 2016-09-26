resource "aws_iam_user_policy" "iam_plc-gemv2_zip_ms" {
    name = "cup-gemv2-zip_ms-ec2"
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