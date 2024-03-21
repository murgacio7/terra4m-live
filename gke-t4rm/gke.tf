

resource "google_service_account" "default" {
  account_id   = "gke-cluster"
  display_name = "service account for gke cluster"
}

resource "google_container_cluster" "terra4m" {
  name                = "my-gke-cluster2"
  location            = "us-central1-b"
  initial_node_count  = 3
  deletion_protection = false

  node_config {
    disk_size_gb    = 60
    service_account = google_service_account.default.email # Corrected attribute to reference service account email
  }
}


