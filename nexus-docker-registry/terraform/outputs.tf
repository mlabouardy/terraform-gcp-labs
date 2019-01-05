output "Nexus IP" {
  value = "${google_compute_instance.nexus.network_interface.0.access_config.0.nat_ip}"
}
