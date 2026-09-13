terraform {
  required_providers {
    google = {
      source = "opentofu/google"
      version = "8.2.0"
    }

    kubernetes = {
      source = "opentofu/kubernetes"
      version = "3.2.1"
    }
  }
  backend "gcs" {
    bucket = "survey-state"
  }
}

provider "google" {
  project = "survey"
}

provider "kubernetes" {

}
