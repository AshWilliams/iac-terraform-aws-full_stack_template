resource "template_file" "ec2-userdata" {
  template = "${file("${path.module}/aws.ec2-userdata.txt")}"
}
