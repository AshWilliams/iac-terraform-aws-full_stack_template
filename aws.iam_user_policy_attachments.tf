resource "aws_iam_user_policy_attachment" "iam_plc_att-gemv2_zip_ms" {
    user = "${aws_iam_user.iam_usr-gemv2_zip_ms.name}"
    policy_arn = "${aws_iam_policy.iam_plc-gemv2_zip_ms.arn}"
}