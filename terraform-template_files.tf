resource "template_file" "node-userdata" {
  template  = "${file("terraform-template_file-ec2-instance-userdata.txt")}"
}
