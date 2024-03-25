variable "sa_account_id" {
  type    = string
}
variable "sa_display_name" {
  type    = string
}
variable "cluster_name" {
  type    = string
  default = "my-gke-cluster2"
}
variable "cluster_location" {
  type    = string
  default = "us-central1-b"
}
variable "node_count" {
  type    = number
  default = 1
}

variable "disk_size_gb" {
  type    = number
  default = 60
}
variable "region" {
  type    = string
  default = "us-central1"
}
variable "project_id" {
    type = string 
    default = "decisive-sylph-417822"
}
