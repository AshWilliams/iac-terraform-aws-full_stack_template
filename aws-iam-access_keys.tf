resource "aws_iam_access_key" "master" {
  user = "${aws_iam_user.prj_user.name}"
}