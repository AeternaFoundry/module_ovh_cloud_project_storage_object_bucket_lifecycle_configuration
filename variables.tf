variable "cloud_project_storage_object_bucket_lifecycle_configurations" {
  description = <<EOT
Map of cloud_project_storage_object_bucket_lifecycle_configurations, attributes below
Required:
    - container_name
    - region_name
    - rules
Optional:
    - service_name
EOT

  type = map(object({
    container_name = string
    region_name    = string
    rules = list(object({
      abort_incomplete_multipart_upload = optional(object({
        days_after_initiation = optional(number)
      }))
      expiration = optional(object({
        date                         = optional(string)
        days                         = optional(number)
        expired_object_delete_marker = optional(bool)
      }))
      filter = optional(object({
        object_size_greater_than = optional(number)
        object_size_less_than    = optional(number)
        prefix                   = optional(string)
        tags                     = optional(map(string))
      }))
      id = optional(string)
      noncurrent_version_expiration = optional(object({
        newer_noncurrent_versions = optional(number)
        noncurrent_days           = optional(number)
      }))
      noncurrent_version_transitions = optional(list(object({
        newer_noncurrent_versions = optional(number)
        noncurrent_days           = optional(number)
        storage_class             = optional(string)
      })))
      status = string
      transitions = optional(list(object({
        date          = optional(string)
        days          = optional(number)
        storage_class = string
      })))
    }))
    service_name = optional(string)
  }))
}

