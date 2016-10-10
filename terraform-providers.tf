provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
}

# Configure the Atlas Provider
provider "atlas" {
  token = "${var.atlas_token}"
}
