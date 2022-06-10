#create a VM using Terraform

provider "google" {
  project = "ENTER YOUR PROJECT ID HERE"
  region = "europe-west1"
  zone = "europe-west1-b"
}

resource "google_compute_instance" "default" {
  name = "gce-europe-west1-b-d-tflab01"
  machine_type = "n1-standard-4"
  zone = "europe-west1-b"

  tags = ["tflab01"]

  boot_disk {
    device_name = "gce-europe-west1-b-d-tflab01"
    initialize_params {
      size = "20"
      type = "pd-standard"
      image = "rhel-cloud/rhel-7"
    }
  }

  scheduling {
    on_host_maintenance = "MIGRATE"
  }

  network_interface {
    network = "default"
  }

  metadata = {
    lab = "tflab01"
  }

  metadata_startup_script = "echo Hello World!"

  service_account {
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}
