resource "aws_launch_configuration" "prj-ec2_launch_conf" {

	###########################
	##  Required Parameters  ##
	###########################
	
    image_id = "${data.aws_ami.centos7_ami.id}"
	#(Required) The EC2 image ID to launch.
	
    instance_type = "t2.micro"
	#(Required) The size of instance to launch.


	###########################
	##  Optional Parameters  ##
	###########################
	
	
    name = "ec2-lc-${var.project_ecosystem}-${var.project_webapplication}"
	#(Optional) The name of the launch configuration. If you leave this blank, Terraform will auto-generate a unique name.
	
	
	key_name = "${aws_key_pair.prj-ec2_key_pair.key_name}"
	#(Optional) The key name that should be used for the instance.
	
	#iam_instance_profile = ""
	#(Optional) The IAM instance profile to associate with launched instances.
	
	
	user_data = "${template_file.ec2_instance-userdata.rendered}"
	#(Optional) The user data to provide when launching the instance.
	
	
	#root_block_device
	#(Optional) Customize details about the root block device of the instance. See Block Devices below for details.
	#{
	#
	#	volume_type = "gp2"
	#	#(Optional) The type of volume. Can be "standard", "gp2", or "io1". (Default: "standard").
	#
	#	volume_size = "${ec2_launch_conf-root_volume_size}"
	#	#(Optional) The size of the volume in gigabytes.
	#
	#	#iops = ""
	#	#(Optional) The amount of provisioned IOPS. This must be set with a volume_type of "io1".
	#
	#	delete_on_termination = true
	#	#(Optional) Whether the volume should be destroyed on instance termination (Default: true).
	#
	#}
	
	
	#ebs_block_device
	#(Optional) Additional EBS block devices to attach to the instance. See Block Devices below for details.
	#{
	#
	#	device_name = ""
	#	#(Required) The name of the device to mount.
	#	
	#	snapshot_id = ""
	#	#(Optional) The Snapshot ID to mount.
	#	
	#	volume_type = ""
	#	#(Optional) The type of volume. Can be "standard", "gp2", or "io1". (Default: "standard").
	#	
	#	volume_size = ""
	#	#(Optional) The size of the volume in gigabytes.
	#	
	#	iops = ""
	#	#(Optional) The amount of provisioned IOPS. This must be set with a volume_type of "io1".
	#	
	#	delete_on_termination = ""
	#	#(Optional) Whether the volume should be destroyed on instance termination (Default: true).
	#	
	#	encrypted = ""
	#	#(Optional) Whether the volume should be encrypted or not. Do not use this option if you are using snapshot_id as the encrypted flag will be determined by the snapshot. (Default: false).
	#
	#}
	
	#ephemeral_block_device
	#(Optional) Customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details.
	#{
	#
	#	#device_name = ""
	#	#The name of the block device to mount on the instance.
	#	
	#	virtual_name = ""
	#	#The Instance Store Device Name (e.g. "ephemeral0")
	#
	#}
	
	
	#security_groups = ""
	#(Optional) A list of associated security group IDS.
		
	#associate_public_ip_address = ""
	#(Optional) Associate a public ip address with an instance in a VPC.
	
	
	#ebs_optimized = ""
	#(Optional) If true, the launched EC2 instance will be EBS-optimized.
	
	#enable_monitoring = ""
	#(Optional) Enables/disables detailed monitoring. This is enabled by default.
	
	
    #lifecycle {
    #  create_before_destroy = true
    #}
}