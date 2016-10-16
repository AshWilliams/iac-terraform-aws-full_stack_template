resource "aws_s3_bucket_object" "appuser_iam_crd" {
  bucket = "${aws_s3_bucket.app.id}"
  key = ".app-iam_user.credentials"
  content = "${template_file.appuser_iam_crd.rendered}"
}
