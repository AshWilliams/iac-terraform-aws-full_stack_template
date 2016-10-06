resource "template_file" "node_userdata" {
  template  = "${file("terraform-template_file-ec2-instance-userdata.txt")}"
}
