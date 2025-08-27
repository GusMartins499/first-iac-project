resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.org_name}-bucket-iac-120-${terraform.workspace}"

  tags = {
    Name    = "Primeiro bucket"
    Iac     = true
    Context = "${terraform.workspace}"
  }
}