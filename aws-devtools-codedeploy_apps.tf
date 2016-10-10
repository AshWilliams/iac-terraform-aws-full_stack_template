resource "aws_codedeploy_app" "webapp" {
  name = "devtools-cd-${var.prj_ecosystem}-${var.prj_application}-${var.prj_environment}""
}