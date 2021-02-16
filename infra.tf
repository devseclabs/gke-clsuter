# NETWORK
# VPC CONF
resource "google_compute_network" "vpc" {
  name                    = "${var.name}-vpc"
  auto_create_subnetworks = "false"
}

# SUBNET CONF
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.name}-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = var.net_cidr

}

#GKE CONF
#CLUSTER CONF
resource "google_container_cluster" "nvcluster" {
  name     = "${var.name}-gke"
  location = var.zone

  #remove_default_node_pool = true
  initial_node_count       = var.gke_num_nodes

  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name

  master_auth {
    username = var.gke_username
    password = var.gke_password

    client_certificate_config {
      issue_client_certificate = true
    }
  }

  node_config {

    image_type = var.image
    machine_type = var.machine

  }

}