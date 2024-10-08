provider "google" {
project = "first-provider-437512-s4"
  region  = "us-central1"
zone="europe-west4-a"
}

resource "google_compute_instance" "centos_vm" {
  name         = "my-vm2"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-stream-9"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
