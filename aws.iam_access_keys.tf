resource "aws_iam_access_key" "iam_acckey-gemv2_zip.ms" {
    user = "${aws_iam_user.iam_usr-gemv2_zip.ms.name}"
}