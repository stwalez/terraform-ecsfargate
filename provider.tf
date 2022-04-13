# provider.tf

# Specify the provider and access details
provider "aws" {
  shared_credentials_files = ["$HOME/.aws/credentials"]
  profile                  = "default"
  region                   = var.aws_region[0]
}

# Define alternate aliased providers:

provider "aws" {
  region  = var.aws_region[1]
  alias   = "uk"
}

provider "aws" {
  region  = var.aws_region[2]
  alias   = "germany"
}