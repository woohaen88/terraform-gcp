resource "google_compute_address" "address-02" {
  name         = "external-ip-02"
  address_type = "EXTERNAL"
  region       = var.region
}