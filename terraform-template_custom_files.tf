## Aplication Symfony Parameters yml

  resource "template_file" "app-symfony_parameters_yml" {
    template = "${file("tplfile-app-symfony_parameters_yml")}"
    vars {
      database_host         = "${aws_db_instance.mariadb.address}"
      database_port         = "${aws_db_instance.mariadb.port}"
      database_name         = "${var.project_db_name}"
      database_user         = "${var.project_db_admin_username}"
      database_password     = "${var.project_db_admin_password}"
      
      aws_region            = "${var.aws_region}"
      aws_access_key_id     = "${var.aws_access_key}"
      aws_secret_access_key = "${var.aws_secret_key}"
      
      aws_bucket            = "${aws_s3_bucket.app.id}"
      redis_dsn             = "${aws_elasticache_cluster.redis.cache_nodes.0.address}"
      
      transmitter_url       = "${aws_route53_record.main.fqdn}"
    }
  }
