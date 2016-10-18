resource "aws_elasticache_subnet_group" "redis" {
  name = "${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
  subnet_ids = ["${aws_subnet.public.id}"]
}
