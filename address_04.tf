resource "google_compute_address" "address-04" {
  name         = "external-ip-04"
  address_type = "EXTERNAL"
  region       = var.region
}