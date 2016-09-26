resource "aws_key_pair" "ec2_key_pair" {
  key_name = "ec2-kp-${var.application-name}"" 
  public_key	= "${file("${var.keypub_path}")}"
}