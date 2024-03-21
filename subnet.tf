resource "google_compute_subnetwork" "devops" {
  name          = "devops-subnetwork"
  ip_cidr_range = "10.0.0.0/24"
  region        = var.region
  network       = google_compute_network.vpc_network.id
}
