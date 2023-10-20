terraform {
  backend "s3" {
    bucket = "aws-shared-terraform-state"
    key    = "aws/use1/dev/frontend"
    region = "us-east-1"
  }
}

module "frontend" {
  source = "git@github.com:pacenthink/terraform-aws-modules-cloudfront"
  name   = "frontend.pacenthink.co"
  tags = {
    cloud       = "aws"
    environment = "dev"
    region      = "use1"
  }
}

