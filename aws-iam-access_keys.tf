resource "aws_iam_access_key" "prj-iam_accesskey" {

    user = "${aws_iam_user.prj-iam_user.name}"
	#(Required) The IAM user to associate with this access key.

}