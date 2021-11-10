resource "aws_iam_user" "demo" {
	count = 5
    	name = "Admin.${count.index}"
}
