resource "aws_db_subnet_group" "default" {
  name = "main"
  subnet_ids = ["${aws_subnet.public.*.id}"]
  tags {
    Name = "My DB subnet group"
  }
}
