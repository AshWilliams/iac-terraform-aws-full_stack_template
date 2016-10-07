resource "aws_launch_configuration" "node" {
  name = "ec2-lc-${var.prj_ecosystem}-${var.prj_application}"
  
  image_id      = "${data.aws_ami.centos7.id}"
  instance_type = "${var.ec2_instance_type}"
  
  key_name              = "${aws_key_pair.master.key_name}"
  #iam_instance_profile = ""
    
  user_data = "${template_file.node_userdata.rendered}"
  
  enable_monitoring = false
  
  security_groups = ["${aws_security_group.ec2-inst.id}", "${aws_security_group.ec2-instances-officeaccess.id}", "${aws_security_group.ec2-instances-remoteaccess.id}"]
}