output "Swarm managers IPs" {
  value = "${google_compute_instance.managers.*.network_interface.0.access_config.0.nat_ip}"
}

output "Swarm workers IPs" {
  value = "${google_compute_instance.workers.*.network_interface.0.access_config.0.nat_ip}"
}
