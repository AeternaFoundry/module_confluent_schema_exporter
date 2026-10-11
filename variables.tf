variable "schema_exporters" {
  description = <<EOT
Map of schema_exporters, attributes below
Required:
    - name
    - destination_schema_registry_cluster (block):
        - credentials (optional, block):
            - key (required)
            - secret (required)
        - id (optional)
        - rest_endpoint (required)
Optional:
    - config
    - context
    - context_type
    - reset_on_update
    - rest_endpoint
    - status
    - subject_rename_format
    - subjects
    - credentials (block):
        - key (required)
        - secret (required)
    - schema_registry_cluster (block):
        - id (required)
    - timeouts (block):
        - create (optional)
EOT

  type = map(object({
    name                  = string
    config                = optional(map(string))
    context               = optional(string)
    context_type          = optional(string)
    reset_on_update       = optional(bool)
    rest_endpoint         = optional(string)
    status                = optional(string)
    subject_rename_format = optional(string)
    subjects              = optional(set(string))
    destination_schema_registry_cluster = object({
      credentials = optional(object({
        key    = string
        secret = string
      }))
      id            = optional(string)
      rest_endpoint = string
    })
    credentials = optional(object({
      key    = string
      secret = string
    }))
    schema_registry_cluster = optional(object({
      id = string
    }))
    timeouts = optional(object({
      create = optional(string)
    }))
  }))
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

