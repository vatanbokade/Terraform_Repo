provider "aws" {
    region = "us-east-2"
}

module "auto_scalling" {
  source = "../../modules/auto_scaling/"
  name = "sample-lc"
  image_id = "ami-0dd0ccab7e2801812"
  instance_type = "t2.micro"
  key_name = "id_rsa"       
  security_groups = "sg-0b14d541"              
  root_block_device {
      volume_type = gp2
      volume_size = 10gb
      encrypted = true 
  }
}