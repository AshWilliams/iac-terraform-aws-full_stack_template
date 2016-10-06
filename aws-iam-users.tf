resource "aws_iam_user" "prj_user" {
  name = "iam-usr-${var.prj_ecosystem}-${var.prj_application}"
}