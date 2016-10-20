## Aplication Symfony Parameters yml ##
  resource "template_file" "app-symfony_parameters_yml" {
    depends_on = ["aws_iam_user.appuser", "aws_s3_bucket.app", "aws_s3_bucket.app-config", "aws_elasticache_cluster.redis", "aws_elasticsearch_domain.es-cluster"]
    template = "${file("tplfile-app-symfony_parameters_yml")}"
    vars {

      aws_region          = "${var.aws_region}"
      aws_iam_access_key  = "${var.aws_access_key}"
      aws_iam_secret_key  = "${var.aws_secret_key}"
      
      aws_s3_bucket       = "${aws_s3_bucket.app.id}"      
      aws_elasticsearch   = "${aws_elasticsearch_domain.es-cluster.endpoint}"
      aws_elcache_redis_port    = "${aws_elasticache_cluster.bar.cache_nodes.0.port}"
      aws_elcache_redis_address = "${aws_elasticache_cluster.bar.cache_nodes.0.address}"
      
      dedup_api_username = "${var.app-symfony-dedup_api_username}"
      dedup_api_userpass = "${var.app-symfony-dedup_api_userpass}"
      
      bridgemanimages_api_base_url = "${var.app-symfony-bridgemanimages_api_base_url}"
      bridgemanimages_api_username = "${var.app-symfony-bridgemanimages_api_username}"
      bridgemanimages_api_userpass = "${var.app-symfony-bridgemanimages_api_userpass}"

    }
  }
