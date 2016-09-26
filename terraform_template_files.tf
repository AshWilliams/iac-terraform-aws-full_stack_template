resource "template_file" "ec2_instance-userdata" {
  template = "${file("ec2_instance-userdata.txt")}"
}
