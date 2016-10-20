## Aplication Symfony Parameters yml

  resource "template_file" "app-symfony_parameters_yml" {
    template = "${file("tplfile-app-symfony_parameters_yml")}"
    vars {

      aws_region            = "${var.aws_region}"
      aws_access_key_id     = "${var.aws_access_key}"
      aws_secret_access_key = "${var.aws_secret_key}"
      
      aws_bucket            = "${aws_s3_bucket.app.id}"

    }
  }
