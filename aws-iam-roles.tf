resource "aws_iam_role" "codedeploy" {
  name = "iam-role-dtcd-${var.prj_ecosystem}-${var.prj_application}-${var.prj_environment}"
}