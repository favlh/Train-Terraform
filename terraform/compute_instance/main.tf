resource "google_compute_instance" "firja-vm" {
  project           = "nasir-441404"
  name              = "webserver-firja"
  zone              = "asia-southeast1-a"
  machine_type      = "e2-micro"
  tags              = ["webserver"]

  boot_disk {
    initialize_params {
        image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network = "firja-vpc"
    subnetwork = "firja-subnetwork"
    subnetwork_project = "nasir-441404"

    access_config {}
  }
}