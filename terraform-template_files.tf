resource "template_file" "node_userdata" {
  template  = "${file("terraform-template_file-ec2-instance-userdata.txt")}"
  vars {
    iamAccessKey  = "${var.aws_access_key}"
    iamSecretKey  = "${var.aws_secret_key}"
    activeRegion  = "${var.aws_region}"
  }
}
