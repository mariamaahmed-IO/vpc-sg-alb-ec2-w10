terraform {
  backend "s3" {
    bucket  = "mybucketweek7maa"
    key     = "alb/terraform.state"
    region  = "us-east-1"
    encrypt = true
  }
}