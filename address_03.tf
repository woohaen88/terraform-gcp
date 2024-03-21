resource "google_compute_address" "address-03" {
  name         = "external-ip-03"
  address_type = "EXTERNAL"
  region       = var.region
}