resource "aws_codedeploy_app" "webapp" {
  name = "devtools-cdapp-${var.prj_ecosystem}-${var.prj_application}-${var.prj_environment}"
}