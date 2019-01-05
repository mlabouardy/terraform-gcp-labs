resource "google_compute_firewall" "nexus" {
  name    = "nexus-firewall"
  network = "${google_compute_network.nexus.name}"

  allow {
    protocol = "tcp"
    ports    = ["22", "8081", "5000"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_network" "nexus" {
  name = "nexus-network"
}
