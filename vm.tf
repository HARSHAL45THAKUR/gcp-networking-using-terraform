resource "google_compute_instance" "vm1" {
  name         = "vm1"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network    = google_compute_network.vpc1.self_link
    subnetwork = google_compute_subnetwork.subnet1.self_link
    # No external IP
  }

  metadata_startup_script = file("${path.module}/instance_startup.sh")
}

resource "google_compute_instance" "vm2" {
  name         = "vm2"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network    = google_compute_network.vpc1.self_link
    subnetwork = google_compute_subnetwork.subnet1.self_link
    access_config {} # This allows external IP
  }
}

resource "google_compute_instance" "vm3" {
  name         = "vm3"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = google_compute_network.vpc2.self_link
    access_config {} # External IP
  }
}
