provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "535960a7-fbd3-4eac-ac6e-01c51deb55b2"
    git_commit           = "c1ba303687bed7682920db6b5342b93d0f6d28b0"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 17:31:13"
    git_last_modified_by = "howe.jon@gmail.com"
    git_modifiers        = "howe.jon"
    git_org              = "jonhowe"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
