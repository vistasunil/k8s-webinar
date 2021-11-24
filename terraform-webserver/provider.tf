terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

# Specify the GCP Provider
provider "google" {
  credentials = file("/home/ubuntu/devops-331917.json")
  project     = var.project_id
  region      = var.region
}

