variable "cloud_guard_problem_entities_lookup" {
  description = <<EOT
Map of cloud_guard_problem_entities_lookup, attributes below
Required:
    - problem_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    problem_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

