resource "template_file" "node_userdata" {
  template  = "${file("terraform-template_file-ec2-instance-userdata.txt")}"
  vars {
    iamAccessKey  = "${var.aws_access_key}"
    iamSecretKey  = "${var.aws_secret_key}"
    activeRegion  = "${var.aws_region}"
  }
}

resource "template_file" "appuser_iam_crd" {
  template = "${file("files-appuser_iam_crd")}"
  vars {
    iamAccKey = "${aws_iam_access_key.master.id}"
    iamSecKey = "${aws_iam_access_key.master.secret}"
  }
}
