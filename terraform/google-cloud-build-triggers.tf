// This file is used to create the Google Cloud Build triggers.

provider "google" {
  project = "nim-onboarding"
}

locals {
  description = "This Cloud Build Trigger was created using Terraform."
}

resource "google_cloudbuild_trigger" "trigger-website-1-2" {
  name = "website-1-2"
  description = local.description
  filename = "cloudbuild.yaml"
  github {
    owner = "NimJay"
    name   = "test-cloud-build"
    push {
      branch = "^main$"
    }
  }
}

resource "google_cloudbuild_trigger" "trigger-website-3" {
  name = "website-3"
  description = local.description
  included_files = ["website-3/**"]
  filename = "website-3/cloudbuild.yaml"
  github {
    owner = "NimJay"
    name   = "test-cloud-build"
    push {
      branch = "^main$"
    }
  }
}
