resource "aws_key_pair" "prj-ec2_key_pair" {
  key_name = "ec2-kp-${var.project_ecosystem}-${var.project_webapplication}" 
  public_key	= "${var.ec2_keypair_public}"
}