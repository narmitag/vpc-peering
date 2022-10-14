terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.42.0"
    }
  }
}
provider "aws" {
  region     = var.region
}
provider "aws" {
  region     = "eu-west-1"
  alias      = "owner"
  profile    = "sb"
  # assume_role {
  #   role_arn = "arn:aws:iam::$(owner_account_id):role/$(assume_role_name)"
  # }
}
provider "aws" {
  region     = "eu-west-2"
  alias      = "accepter"
  profile    = "sb-dev"
  # assume_role {
  #   role_arn = "arn:aws:iam::$(accepter_account_id):role/$(assume_role_name)"
  # }
}