resource "aws_instance" "Xenn" {
  ami               = var.ami
  availability_zone = var.az
  instance_type     = var.instance_type

  tags = {
    Name = "Xenn"
  }
}

resource "aws_ebs_volume" "exam" {
  availability_zone = var.az
  size              = 10
  tags = {
     Name = "newvol"
   }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = var.ebs_name
  volume_id   = "aws_ebs_volume.exam.id"
  instance_id = "aws_instance.Xenn.id"
}

 resource "aws_iam_group_membership" "team" {
   name = "tf-testing-group-membership"

   users = [
     "aws_iam_user.user_one.name",
     "aws_iam_user.user_two.name",
     "aws_iam_user.user_three.name",
   ]

   group = "aws_iam_group.group.name"
 }

 resource "aws_iam_user" "user_one" {
     name = var.name[0]
 }

 resource "aws_iam_user" "user_two" {
 	  	name = var.name[1]
 }

 resource "aws_iam_user" "user_three" {
 	  	name = var.name[2]
 }

 resource "aws_iam_group" "group" {
   name = var.gp_name
   #path = "/users/"
 }


 resource "aws_eip" "lb" {
   instance = "aws_instance.Xenn.id"
   vpc      = true
 }
