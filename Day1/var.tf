variable "ami" {
    type = string
    default = "ami-0dd0ccab7e2801812"
    description = "This is AMI"
}

variable "az" {
    type = string
    default = "us-east-2b"
    description = "This is AZ"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "This is it"
}

variable "ebs_name" {
    type = string
    default = "/dev/sdh"
    description = "This is ebs volume"
}

variable "name" {
    type = list(string)
    default = ["Harry","Sam","Tom"]
    description = "This is Users Name"
}

variable "gp_name" {
    type = string
    default = "Tech_Team"
    description = "This is group name"
}