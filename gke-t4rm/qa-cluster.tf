module "qa_gke_cluster1" {
  source           = "git@github.com:murgacio7/tf-modules.git//gke"
  sa_account_id    = "qa-gke-cluster"
  sa_display_name  = "QA service account for gke cluster"
  cluster_name     = "qa-cluster2"
  cluster_location = "us-central1-a"
  node_count       = 1
  disk_size_gb     = 60
  region           = "us-central1"
  project_id       = "decisive-sylph-417822"
}