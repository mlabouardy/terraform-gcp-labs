data "template_file" "inventory" {
  template = "${file("templates/inventory.tpl")}"

  depends_on = [
    "google_compute_instance.managers",
    "google_compute_instance.workers",
  ]

  vars {
    managers = "${join("\n", google_compute_instance.managers.*.network_interface.0.access_config.0.nat_ip)}"
    workers  = "${join("\n", google_compute_instance.workers.*.network_interface.0.access_config.0.nat_ip)}"
  }
}

resource "null_resource" "cmd" {
  triggers {
    template_rendered = "${data.template_file.inventory.rendered}"
  }

  provisioner "local-exec" {
    command = "echo '${data.template_file.inventory.rendered}' > ../ansible/inventory"
  }
}
