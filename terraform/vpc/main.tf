resource "google_compute_network" "network" {
    name = "firja-vpc"
    auto_create_subnetworks = false
    project = "nasir-441404"
    description = "terraform vpc"
}

terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 5.1.0"
    }
  }
  backend "gcs" {
    bucket = "firja-terraform-state"
    prefix = "gcs"
  }
}