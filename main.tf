module "common_us" {
  aws_region = var.aws_region[0]
  source     = "./common"
  env        = var.env
  cidr_block = var.cidr_block
}

module "common_uk" {
    source = "./common"
    aws_region = var.aws_region[1]
    providers = {
        aws = aws.uk
    }
}

# module "common_germany" {
#   source     = "./common"
#   aws_region = var.aws_region[2]
#   providers = {
#     aws = aws.germany
#   }
#   env = var.env
#   cidr_block = var.cidr_block
# }
