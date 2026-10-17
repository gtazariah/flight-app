terraform {
  backend "gcs" {
    bucket      = "azariah-flight-app-bucket"
    prefix      = "terraform"
    credentials = "C:\\Users\\Admin\\Desktop\\keys\\gcp\\flight-project\\terraform-key.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.42.0"
    }
  }
}

provider "google" {
  project     = var.gcp_project
  credentials = file(var.key_path)
  zone        = var.project_zone
}