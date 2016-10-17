resource "template_file" "node_userdata" {
  template  = "${file("terraform-template_file-ec2-instance-userdata.txt")}"
  vars {
    iamAccessKey  = "${var.aws_access_key}"
    iamSecretKey  = "${var.aws_secret_key}"
    activeRegion  = "${var.aws_region}"
  }
}

resource "template_file" "app-iam_user_crd" {
  template = "${file("files-appuser_iam_crd")}"
  vars {
    iamAccKey = "${aws_iam_access_key.master.id}"
    iamSecKey = "${aws_iam_access_key.master.secret}"
  }
}

resource "template_file" "app-github_repo" {
  template = "${file("files-github_repo")}"
  vars {
    github_username     = "${var.project_gitrepo_uname}"
    github_password     = "${var.project_gitrepo_upass}"
    github_repo_url     = "${var.project_gitrepo_url}"
    github_repo_branch  = "${var.project_gitrepo_branch}"
  }
}
