output "schema_exporters_id" {
  description = "Map of id values across all schema_exporters, keyed the same as var.schema_exporters except keys with no id are omitted"
  value       = { for k, v in confluent_schema_exporter.schema_exporters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "schema_exporters_config" {
  description = "Map of config values across all schema_exporters, keyed the same as var.schema_exporters except keys with no config are omitted"
  value       = { for k, v in confluent_schema_exporter.schema_exporters : k => v.config if v.config != null && length(v.config) > 0 }
}
output "schema_exporters_context" {
  description = "Map of context values across all schema_exporters, keyed the same as var.schema_exporters except keys with no context are omitted"
  value       = { for k, v in confluent_schema_exporter.schema_exporters : k => v.context if v.context != null && length(v.context) > 0 }
}
output "schema_exporters_context_type" {
  description = "Map of context_type values across all schema_exporters, keyed the same as var.schema_exporters except keys with no context_type are omitted"
  value       = { for k, v in confluent_schema_exporter.schema_exporters : k => v.context_type if v.context_type != null && length(v.context_type) > 0 }
}
output "schema_exporters_credentials" {
  description = "Map of credentials values across all schema_exporters, keyed the same as var.schema_exporters except keys with no credentials are omitted"
  value       = { for k, v in confluent_schema_exporter.schema_exporters : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "schema_exporters_destination_schema_registry_cluster" {
  description = "Map of destination_schema_registry_cluster values across all schema_exporters, keyed the same as var.schema_exporters except keys with no destination_schema_registry_cluster are omitted"
  value       = { for k, v in confluent_schema_exporter.schema_exporters : k => one(v.destination_schema_registry_cluster) if v.destination_schema_registry_cluster != null && length(v.destination_schema_registry_cluster) > 0 }
  sensitive   = true
}
output "schema_exporters_name" {
  description = "Map of name values across all schema_exporters, keyed the same as var.schema_exporters except keys with no name are omitted"
  value       = { for k, v in confluent_schema_exporter.schema_exporters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "schema_exporters_reset_on_update" {
  description = "Map of reset_on_update values across all schema_exporters, keyed the same as var.schema_exporters except keys with no reset_on_update are omitted"
  value       = { for k, v in confluent_schema_exporter.schema_exporters : k => v.reset_on_update if v.reset_on_update != null }
}
output "schema_exporters_rest_endpoint" {
  description = "Map of rest_endpoint values across all schema_exporters, keyed the same as var.schema_exporters except keys with no rest_endpoint are omitted"
  value       = { for k, v in confluent_schema_exporter.schema_exporters : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}
output "schema_exporters_schema_registry_cluster" {
  description = "Map of schema_registry_cluster values across all schema_exporters, keyed the same as var.schema_exporters except keys with no schema_registry_cluster are omitted"
  value       = { for k, v in confluent_schema_exporter.schema_exporters : k => one(v.schema_registry_cluster) if v.schema_registry_cluster != null && length(v.schema_registry_cluster) > 0 }
}
output "schema_exporters_status" {
  description = "Map of status values across all schema_exporters, keyed the same as var.schema_exporters except keys with no status are omitted"
  value       = { for k, v in confluent_schema_exporter.schema_exporters : k => v.status if v.status != null && length(v.status) > 0 }
}
output "schema_exporters_subject_rename_format" {
  description = "Map of subject_rename_format values across all schema_exporters, keyed the same as var.schema_exporters except keys with no subject_rename_format are omitted"
  value       = { for k, v in confluent_schema_exporter.schema_exporters : k => v.subject_rename_format if v.subject_rename_format != null && length(v.subject_rename_format) > 0 }
}
output "schema_exporters_subjects" {
  description = "Map of subjects values across all schema_exporters, keyed the same as var.schema_exporters except keys with no subjects are omitted"
  value       = { for k, v in confluent_schema_exporter.schema_exporters : k => v.subjects if v.subjects != null && length(v.subjects) > 0 }
}

