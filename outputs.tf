output "cloud_project_storage_object_bucket_lifecycle_configurations_id" {
  description = "Map of id values across all cloud_project_storage_object_bucket_lifecycle_configurations, keyed the same as var.cloud_project_storage_object_bucket_lifecycle_configurations except keys with no id are omitted"
  value       = { for k, v in ovh_cloud_project_storage_object_bucket_lifecycle_configuration.cloud_project_storage_object_bucket_lifecycle_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_project_storage_object_bucket_lifecycle_configurations_container_name" {
  description = "Map of container_name values across all cloud_project_storage_object_bucket_lifecycle_configurations, keyed the same as var.cloud_project_storage_object_bucket_lifecycle_configurations except keys with no container_name are omitted"
  value       = { for k, v in ovh_cloud_project_storage_object_bucket_lifecycle_configuration.cloud_project_storage_object_bucket_lifecycle_configurations : k => v.container_name if v.container_name != null && length(v.container_name) > 0 }
}
output "cloud_project_storage_object_bucket_lifecycle_configurations_region_name" {
  description = "Map of region_name values across all cloud_project_storage_object_bucket_lifecycle_configurations, keyed the same as var.cloud_project_storage_object_bucket_lifecycle_configurations except keys with no region_name are omitted"
  value       = { for k, v in ovh_cloud_project_storage_object_bucket_lifecycle_configuration.cloud_project_storage_object_bucket_lifecycle_configurations : k => v.region_name if v.region_name != null && length(v.region_name) > 0 }
}
output "cloud_project_storage_object_bucket_lifecycle_configurations_rules" {
  description = "Map of rules values across all cloud_project_storage_object_bucket_lifecycle_configurations, keyed the same as var.cloud_project_storage_object_bucket_lifecycle_configurations except keys with no rules are omitted"
  value       = { for k, v in ovh_cloud_project_storage_object_bucket_lifecycle_configuration.cloud_project_storage_object_bucket_lifecycle_configurations : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "cloud_project_storage_object_bucket_lifecycle_configurations_service_name" {
  description = "Map of service_name values across all cloud_project_storage_object_bucket_lifecycle_configurations, keyed the same as var.cloud_project_storage_object_bucket_lifecycle_configurations except keys with no service_name are omitted"
  value       = { for k, v in ovh_cloud_project_storage_object_bucket_lifecycle_configuration.cloud_project_storage_object_bucket_lifecycle_configurations : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

