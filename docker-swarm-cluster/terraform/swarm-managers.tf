resource "google_compute_instance" "managers" {
  count        = "${var.swarm_managers}"
  name         = "manager"
  machine_type = "${var.swarm_managers_instance_type}"
  zone         = "${var.zone}"

  boot_disk {
    initialize_params {
      image = "${var.image_name}"
      size  = 100
    }
  }

  metadata {
    sshKeys = "${var.ssh_user}:${file(var.ssh_pub_key_file)}"
  }

  network_interface {
    network       = "${google_compute_network.swarm.name}"
    access_config = {}
  }
}
