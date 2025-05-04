# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "gundambucket"
    prefix = "terraform/state"
    credentials = "engaged-domain-453119-k0-7608e9b7ab01.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}