provider "google" {
#  credentials = "${file("keys/devops-417806-2dbb5aa9fdc0.json")}"
credentials = "${file(var.gce_credentials)}"
 project     = var.project_id
 region      = var.region
}