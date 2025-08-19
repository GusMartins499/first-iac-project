resource "aws_s3_bucket" "s3_bucket" {
  bucket = "rocketseat-bucket-iac-120"

  tags = {
    Name = "Primeiro bucket"
    Iac  = true
  }
}