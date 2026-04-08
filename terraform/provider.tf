############################################################
# provider.tf
# Configures the AWS provider and default tags
############################################################

provider "aws" {
  region = var.region

  default_tags {
    tags = var.common_tags
  }
}