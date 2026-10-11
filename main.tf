data "oci_cloud_guard_problem_entities" "cloud_guard_problem_entities_lookup" {
  for_each = var.cloud_guard_problem_entities_lookup

  problem_id = each.value.problem_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

