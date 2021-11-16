variable "name" {
    type = string
    }

variable "image_id" {
    type = string
}

variable "instance_type" {
    type = string
}

variable "iam_instance-profile" {
    type = string
    default = null
}

variable "key_name" {
    type = string
}

variable "security_groups" {
    type = list(string)
}

variable "associate_public_ip_address" {
    type = bool
    default = false
}

variable "user_data" {
    type = string
    default = ""
}

variable "enable_monitoring" {
    type = bool
    default = true
}

variable "ebs_optimized" {
    type = bool
    default = false
}

variable "root_block_device" {
    type = map(string)
}

variable "ebs_block_device" {
    type = map(string)
    default = null
}

variable "spot_price" {
    type = string
    default = null
}

variable "placement_tenancy" {
    type = string
    default = null
}