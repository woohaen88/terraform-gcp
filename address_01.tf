resource "google_compute_address" "address-01" {
  name         = "external-ip-01"
  address_type = "EXTERNAL"
  region       = var.region
}