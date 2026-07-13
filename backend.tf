terraform {
  backend "s3" {
    bucket         = "retail-platform-bootstrap-tf-state-219834006508"
    key            = "bootstrap/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "retail-platform-bootstrap-tf-locks"
    encrypt        = true
  }
}