variable "ami" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "subnet_id" {
  type = list(string)
}
# variable "device_name" {
#   type = string
# }