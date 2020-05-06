resource "aws_s3_bucket" "terraform-state" {
  bucket = "terraform-state-docker-demo-a2b6219"
  acl    = "private"

  tags = {
    Name = "Terraform state"
  }
}

