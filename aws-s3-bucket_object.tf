resource "aws_s3_bucket_object" "app-iam_user_crd" {
  bucket = "${aws_s3_bucket.app.id}"
  key = ".app-iam_user.credentials"
  content = "${template_file.app-iam_user_crd.rendered}"
}

resource "aws_s3_bucket_object" "app_github_repo" {
  bucket = "${aws_s3_bucket.app.id}"
  key = ".app-github.repo"
  content = "${template_file.app-github_repo.rendered}"
}
