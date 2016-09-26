resource "aws_key_pair" "ec2_key_pair" {
  key_name = "ec2-kp-${var.webapp_name}" 
  public_key	= "${var.ec2_keypair_public}"
}