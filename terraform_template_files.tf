resource "template_file" "ec2_instance-userdata" {
  template = "${file("aws.ec2_instance-userdata.txt")}"
}
