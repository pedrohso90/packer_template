provider "google" {
  credentials = file("/home/pedoliveira/Downloads/devopscloud-331312-6dab5446e2f9.json")
  project     = "devopscloud-331312"
  region      = "us-central1"
}

resource "google_compute_instance" "development_environment" {
  name         = "development-environment"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "development-environment"
    }
  }
  network_interface {
    network = "default"
  }
}