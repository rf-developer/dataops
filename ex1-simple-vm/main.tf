#create a VM using Terraform

provider "google" {
  project = "plated-hearth-351522"
  region = "europe-west1"
  zone = "europe-west1-b"
}

resource "google_compute_instance" "create_vm" {
  name = "gce-europe-west1-b-d-tflab01"
  machine_type = "n1-standard-4"
  zone = "europe-west1-b"

  allow_stopping_for_update = true

  tags = ["tflab01"]

  shielded_instance_config{
      enable_secure_boot          = true
      enable_vtpm                 = true
      enable_integrity_monitoring = true
    }
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11-bullseye-v20220621"
    }
  }

  network_interface {
     network = "terraform-network"
  }

  metadata = {
    lab = "tflab01"	
  }

  metadata_startup_script = "echo Hello World!"

  service_account {
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}
