

resource "google_service_account" "default" {
  account_id   = var.sa_account_id   #"gke-cluster"
  display_name = var.sa_display_name #"service account for gke cluster"
}

resource "google_container_cluster" "terra4m" {
  name                = var.cluster_name        #"my-gke-cluster2"
  location            = var.cluster_location    #"us-central1-b"
  initial_node_count  = var.node_count          #3
  

  node_config {
    disk_size_gb    = var.disk_size_gb                     #60
    service_account = google_service_account.default.email # Corrected attribute to reference service account email
  }
}


