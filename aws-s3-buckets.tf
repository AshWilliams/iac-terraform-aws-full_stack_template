resource "aws_s3_bucket" "app" {
  bucket        = "${var.prj_ecosystem}-${var.prj_application}-${var.prj_environment}"
  acl           = "private"
  force_destroy = "true"
}

resource "aws_s3_bucket" "elb_logs" {
  bucket        = "logs-ec2-elb-${var.prj_ecosystem}-${var.prj_application}"
  acl           = "private"
  force_destroy = "true"
}
