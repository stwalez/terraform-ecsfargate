module "common_us" {
    aws_region = var.aws_region[0]
    source = "./common"
}

module "common_uk" {
    source = "./common"
    aws_region = var.aws_region[1]
    providers = {
        aws = aws.uk
    }
}

module "common_germany" {
    source = "./common"
    aws_region = var.aws_region[2]
    providers = {
        aws = aws.germany
    }
}
