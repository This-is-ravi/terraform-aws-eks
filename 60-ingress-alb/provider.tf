terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "ravi-remote-state"
    key    = "expense-dev-ingress-alb"
    region = "us-east-1"
    dynamodb_table = "ravi-locking"
  }


}
# provide authentication here
provider "aws" {
  region = "us-east-1"
}
 