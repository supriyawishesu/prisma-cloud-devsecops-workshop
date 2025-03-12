provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "cfc2ffe32f429d94805714119c7be2a2b58ff5b6"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-03-12 16:06:21"
    git_last_modified_by = "supriya.uppalapati@gmail.com"
    git_modifiers        = "supriya.uppalapati"
    git_org              = "supriyawishesu"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "b39c32b9-6290-4c9f-9a09-31734e8fbc50"
  }
}
