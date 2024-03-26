module "gke_cluster" {
  source           = "git@github.com:murgacio7/tf-modules.git//gke"
  sa_account_id    = "dev-gke-cluster"
  sa_display_name  = "DEV service account for gke cluster"
  cluster_name     = "dev-cluster2"
  cluster_location = "us-central1-b"
  node_count       = 1
  disk_size_gb     = 60
  region           = "us-central1"
  project_id       = "decisive-sylph-417822"
}