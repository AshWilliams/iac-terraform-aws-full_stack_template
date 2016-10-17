resource "aws_s3_bucket_object" "app-iam_user_crd" {
  bucket = "${aws_s3_bucket.app.id}"
  key = ".app-iam_user.credentials"
  content = "${template_file.app-iam_user_crd.rendered}"
}

resource "aws_s3_bucket_object" "app-github_repo" {
  bucket = "${aws_s3_bucket.app.id}"
  key = ".app-github.repo"
  content = "${template_file.app-github_repo.rendered}"
}

resource "aws_s3_bucket_object" "app-nginx_conf" {
  bucket = "${aws_s3_bucket.app.id}"
  key = "app-nginx.conf"
  content = "${template_file.app-nginx_conf.rendered}"
}

resource "aws_s3_bucket_object" "app-phpfpm_conf" {
  bucket = "${aws_s3_bucket.app.id}"
  key = "app-phpfpm.conf"
  content = "${template_file.app-phpfpm_conf.rendered}"
}

resource "aws_s3_bucket_object" "app-newrelic_ini" {
  bucket = "${aws_s3_bucket.app.id}"
  key = "app-newrelic.ini"
  content = "${template_file.app-newrelic_ini.rendered}"
}

## Configuration Files for Cloudwatch Logs Monitoring

  resource "aws_s3_bucket_object" "cloudwatch-allInstances_app_logs_conf" {
    bucket  = "${aws_s3_bucket.app.id}"
    key     = "cloudwatch-allInstances_app_logs_conf"
    content = "${template_file.cloudwatch-allInstances_app_logs_conf.rendered}"
  }

  resource "aws_s3_bucket_object" "cloudwatch-allInstances_gqm_qc_daemons_logs_conf" {
    bucket  = "${aws_s3_bucket.app.id}"
    key     = "cloudwatch-allInstances_gqm_qc_daemons_logs_conf"
    content = "${template_file.cloudwatch-allInstances_gqm_qc_daemons_logs_conf.rendered}"
  }

  resource "aws_s3_bucket_object" "cloudwatch-allInstances_services_logs_conf" {
    bucket  = "${aws_s3_bucket.app.id}"
    key     = "cloudwatch-allInstances_services_logs_conf"
    content = "${template_file.cloudwatch-allInstances_services_logs_conf.rendered}"
  }

  resource "aws_s3_bucket_object" "cloudwatch-allInstances_vhost_logs_conf" {
    bucket  = "${aws_s3_bucket.app.id}"
    key     = "cloudwatch-allInstances_vhost_logs_conf"
    content = "${template_file.cloudwatch-allInstances_vhost_logs_conf.rendered}"
  }
