output "vm_external_ips" {
  value = google_compute_instance.vm_instances[*].network_interface[0].access_config[0].nat_ip
}