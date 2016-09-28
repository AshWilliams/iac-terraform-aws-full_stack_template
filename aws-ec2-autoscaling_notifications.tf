resource "aws_autoscaling_notification" "prj-ec2_autoscalling_notification" {

	group_names = ["${aws_autoscaling_group.prj-ec2_autoscalling_group.name}"]
	#(Required) A list of AutoScaling Group Names
	
	#notifications = [""]
	#(Required) A list of Notification Types that trigger notifications
	notifications  = [
		"autoscaling:EC2_INSTANCE_LAUNCH",
		"autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
		"autoscaling:EC2_INSTANCE_TERMINATE",
		"autoscaling:EC2_INSTANCE_TERMINATE_ERROR"
	]
	
	topic_arn = "${aws_sns_topic.prj-sns_topic-ec2_autoscalling_notification.arn}"
	#(Required) The Topic ARN for notifications to be sent through
	
}
