variable "name" {
  type = string 
}

variable "vpc_id" {
  type = string 
}

variable "port" {
  type = list(string)
}

variable "whitelist" {
  type = list(string)
}


