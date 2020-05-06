terraform {
  backend "s3" {
    bucket = "terraform-state-bunjow-a3c731f"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}
