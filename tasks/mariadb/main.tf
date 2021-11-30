provider "aws" {
  region  = "us-east-2"
  profile = "default"
}

resource "aws_db_instance" "this" {
  count               = 2
  allocated_storage   = 20
  storage_type        = "gp2"
  engine              = "mariadb"
  engine_version      = "10.2.32"
  instance_class      = "db.t2.micro"
  name                = "mydb"
  username            = "root"
  password            = "123456789"
  skip_final_snapshot = true
  # parameter_group_name = "mariadb"


}

