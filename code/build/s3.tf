provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "76395b39-672b-4039-bce2-e6f1855b4133"
    git_commit           = "cfc2ffe32f429d94805714119c7be2a2b58ff5b6"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-03-12 16:06:21"
    git_last_modified_by = "supriya.uppalapati@gmail.com"
    git_modifiers        = "supriya.uppalapati"
    git_org              = "supriyawishesu"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
