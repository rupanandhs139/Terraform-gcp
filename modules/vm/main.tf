resource "google_compute_instance" "vm_instances" {
  count        = 5
  name         = var.vm_names[count.index]  # From locals
  machine_type = var.machine_types[count.index]
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = var.image_list[count.index]
    }
  }

  network_interface {
    subnetwork = var.subnet_name
    access_config {}
  }
}