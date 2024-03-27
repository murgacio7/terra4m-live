module "gcp_storage_bucket" {
  source               = "git@github.com:murgacio7/tf-modules.git//gcp-storage"
  bucket_location      = "US"
  bucket_storage_class = "STANDARD"
  level_access         = true
  bucket_name          = "tfstate_backend"
}