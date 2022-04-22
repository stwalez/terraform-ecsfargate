variable "aws_region" {
  description = "The AWS region things are created in"
  type        = list(any)
  default     = ["us-west-2", "eu-west-2", "eu-central-1"]
}

variable "env" {
  type = string
}


variable "cidr_block" {
  type = map(any)
  default = {
    dev   = "172.17.0.0/16"
    stage = "172.18.0.0/16"
    prod  = "172.19.0.0/16"
  }
}