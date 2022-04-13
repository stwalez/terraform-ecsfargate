variable "aws_region" {
  description = "The AWS region things are created in"
  type = list
  default  = [ "us-west-2", "eu-west-2", "eu-central-1" ]
}