provider "aws" {
    region = "us-east-2"
}

  module "auto_scaling" {
  source = "../../module/auto_scaling/"
  name = "sales-app-prod"
  image_id = "ami-0dd0ccab7e2801812"
  instance_type = "t2.micro"
  key_name = "id_rsa"       
  security_groups = ["sg-0b14d541"]              
  volume_size = "50"
  max_size = "3"
  min_size = "2"
  desired_capacity = "3"
  vpc_zone_identifier = ["subnet-ac69a4d1","subnet-5567f03e"]
  target_group_arns = [module.alb.tg]
}
 
module "alb" {
  source = "../../module/alb"
  name = "sales-app-prod"
  vpc_id = "vpc-eb8ce380" 
  security_groups = ["sg-0b14d541"]
  subnets = ["subnet-ac69a4d1","subnet-5567f03e"]
}

