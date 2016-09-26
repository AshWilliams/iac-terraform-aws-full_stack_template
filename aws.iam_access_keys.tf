resource "aws_iam_access_key" "iam_acckey-gemv2_zip_ms" {
    user = "${aws_iam_user.iam_usr-gemv2_zip_ms.name}"
}