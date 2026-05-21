provider "google" {
  project = "qwiklabs-gcp-02-171605350962"
  region  = "us-central1"
}

resource "google_storage_bucket" "example" {
  name          = "demo-${random_id.rand_suffix.hex}"
  location      = "us-central1"
  force_destroy = true

  uniform_bucket_level_access = false
  public_access_prevention    = "enforced"
  labels = {
    yor_name  = "example"
    yor_trace = "c8fb5393-e74d-480e-82cb-c8d6b6a21627"
  }
}

resource "random_id" "rand_suffix" {
  byte_length = 4
}

output "bucket_name" {
  value = google_storage_bucket.example.name
}
