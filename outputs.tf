output "vm1_internal_ip" {
  value = google_compute_instance.vm1.network_interface.0.network_ip
}

output "vm2_external_ip" {
  value = google_compute_instance.vm2.network_interface.0.access_config.0.nat_ip
}

output "vm3_external_ip" {
  value = google_compute_instance.vm3.network_interface.0.access_config.0.nat_ip
}
