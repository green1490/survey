terraform {
  required_providers {
    google = {
      source = "opentofu/google"
      version = "8.2.0"
    }
  }

  backend "gcs" {
    bucket = "survey-state"
  }
}

provider "google" {
  project = "survey"
}
