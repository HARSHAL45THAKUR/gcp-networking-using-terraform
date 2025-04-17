resource "google_compute_network" "vpc2" {
  name                    = "vpc2"
  auto_create_subnetworks = true
}

resource "google_compute_network_peering" "peer_vpc1_to_vpc2" {
  name         = "vpc1-to-vpc2"
  network      = google_compute_network.vpc1.self_link
  peer_network = google_compute_network.vpc2.self_link
}

resource "google_compute_network_peering" "peer_vpc2_to_vpc1" {
  name         = "vpc2-to-vpc1"
  network      = google_compute_network.vpc2.self_link
  peer_network = google_compute_network.vpc1.self_link
}
