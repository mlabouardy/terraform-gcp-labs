resource "google_compute_firewall" "swarm" {
  name    = "swarm-firewall"
  network = "${google_compute_network.swarm.name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "2377", "7946", "8080"]
  }

  allow {
    protocol = "udp"
    ports    = ["7946", "4789"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_network" "swarm" {
  name = "swarm-network"
}
