output "cloud_guard_problem_entities_lookup_id" {
  description = "Map of id values across all cloud_guard_problem_entities_lookup, keyed the same as var.cloud_guard_problem_entities_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_cloud_guard_problem_entities.cloud_guard_problem_entities_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_guard_problem_entities_lookup_filter" {
  description = "Map of filter values across all cloud_guard_problem_entities_lookup, keyed the same as var.cloud_guard_problem_entities_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_cloud_guard_problem_entities.cloud_guard_problem_entities_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "cloud_guard_problem_entities_lookup_problem_entity_collection" {
  description = "Map of problem_entity_collection values across all cloud_guard_problem_entities_lookup, keyed the same as var.cloud_guard_problem_entities_lookup except keys with no problem_entity_collection are omitted"
  value       = { for k, v in data.oci_cloud_guard_problem_entities.cloud_guard_problem_entities_lookup : k => v.problem_entity_collection if v.problem_entity_collection != null && length(v.problem_entity_collection) > 0 }
}
output "cloud_guard_problem_entities_lookup_problem_id" {
  description = "Map of problem_id values across all cloud_guard_problem_entities_lookup, keyed the same as var.cloud_guard_problem_entities_lookup except keys with no problem_id are omitted"
  value       = { for k, v in data.oci_cloud_guard_problem_entities.cloud_guard_problem_entities_lookup : k => v.problem_id if v.problem_id != null && length(v.problem_id) > 0 }
}

