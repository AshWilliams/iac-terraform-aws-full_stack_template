resource "template_file" "ec2_instance-userdata" {
  template = "${file("${path.module}/aws.ec2_instance-userdata.txt")}"
}
