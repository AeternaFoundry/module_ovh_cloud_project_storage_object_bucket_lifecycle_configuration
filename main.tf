resource "ovh_cloud_project_storage_object_bucket_lifecycle_configuration" "cloud_project_storage_object_bucket_lifecycle_configurations" {
  for_each = var.cloud_project_storage_object_bucket_lifecycle_configurations

  container_name = each.value.container_name
  region_name    = each.value.region_name
  rules          = each.value.rules
  service_name   = each.value.service_name
}

