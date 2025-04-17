resource "google_compute_network" "vpc1" {
  name                    = "vpc1"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet1" {
  name          = "subnet1"
  network       = google_compute_network.vpc1.self_link
  region        = "us-central1"
  ip_cidr_range = "10.0.0.0/24"
}
