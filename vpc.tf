resource "google_compute_network" "vpc_network" {
  project                 = var.project_id
  name                    = "devops-vpc"
  auto_create_subnetworks = false
  mtu                     = 1460
}