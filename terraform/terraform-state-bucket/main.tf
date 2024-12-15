resource "google_storage_bucket" "tf-state-bucket" {
    project     = "nasir-441404"
    name        = "firja-terraform-state"
    location    = "asia-southeast1"
    force_destroy = true
}

terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 5.1.0"
    }
  }
}