resource "template_file" "ec2_instance-userdata" {
  template = "${file("terraform-template_file-ec2-instance-userdata.txt")}"
}
