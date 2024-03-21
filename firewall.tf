resource "google_compute_firewall" "devops_anywhere" {
  name    = "devops-anywhere"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = [ "anywhere" ]
}