locals {
  environment = terraform.workspace == var.env ? terraform.workspace : var.env
  # environment = terraform.workspace
}