resource "aws_db_subnet_group" "rds" {
  count       = "${var.aws_rds_cluster_mariadb_enabled}"
  name        = "db-subnetgrp-rds-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
  subnet_ids  = ["${aws_subnet.private.*.id}"]
  
  tags {
    Name = "db-subnetgrp-rds-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
  }
}
