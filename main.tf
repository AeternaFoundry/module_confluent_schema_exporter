resource "confluent_schema_exporter" "schema_exporters" {
  for_each = var.schema_exporters

  name                  = each.value.name
  config                = each.value.config
  context               = each.value.context
  context_type          = each.value.context_type
  reset_on_update       = each.value.reset_on_update
  rest_endpoint         = each.value.rest_endpoint
  status                = each.value.status
  subject_rename_format = each.value.subject_rename_format
  subjects              = each.value.subjects

  destination_schema_registry_cluster {
    dynamic "credentials" {
      for_each = each.value.destination_schema_registry_cluster.credentials != null ? [each.value.destination_schema_registry_cluster.credentials] : []
      content {
        key    = credentials.value.key
        secret = credentials.value.secret
      }
    }
    id            = each.value.destination_schema_registry_cluster.id
    rest_endpoint = each.value.destination_schema_registry_cluster.rest_endpoint
  }

  dynamic "credentials" {
    for_each = each.value.credentials != null ? [each.value.credentials] : []
    content {
      key    = credentials.value.key
      secret = credentials.value.secret
    }
  }

  dynamic "schema_registry_cluster" {
    for_each = each.value.schema_registry_cluster != null ? [each.value.schema_registry_cluster] : []
    content {
      id = schema_registry_cluster.value.id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }
}

