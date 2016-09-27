resource "aws_iam_user" "prj-iam_user" {

    name = "iam-usr-${var.project_ecosystem}-${var.project_webapplication}"
	#(Required) The user's name.
	
	#path =
	#(Optional, default "/") Path in which to create the user.
	
	#force_destroy =
	#(ptional, default false) When destroying this user, destroy even if it has non-Terraform-managed IAM access keys. Without force_destroy a user with non-Terraform-managed access keys will fail to be destroyed.
	
}