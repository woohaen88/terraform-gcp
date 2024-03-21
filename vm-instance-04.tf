resource "google_compute_instance" "vm-04" {

  name         = "gke-vm-worker-03"
  machine_type = "e2-medium"
  
  boot_disk {
    auto_delete = true
    device_name = "ubuntu-2204-boot-disk"

    initialize_params {
      image = var.os_image_ubuntu_2204
      size  = 100
      type  = "pd-balanced"
    }

    mode = "READ_WRITE"
  }

  can_ip_forward      = false
  deletion_protection = false
  enable_display      = false

  labels = {
    goog-ec-src = "vm_add-tf"
  }

  
  

  network_interface {
    access_config {
      nat_ip       = google_compute_address.address-04.address
      network_tier = "PREMIUM"
    }

    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = google_compute_subnetwork.devops.name
  }

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = var.service_account_email
    scopes = var.service_account_scopes
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }

  metadata = {
    ssh-keys = "${var.gce_ssh_user}:${file(var.gce_ssh_pub_key_file)}\n${var.gce_ssh_user}:${file(var.gce_cluster_pub)}"
  }

  tags = var.network_tags
  zone = var.zone
}