variable "data_safe_audit_profiles_lookup" {
  description = <<EOT
Map of data_safe_audit_profiles_lookup, attributes below
Required:
    - compartment_id
Optional:
    - access_level
    - audit_collected_volume_greater_than_or_equal_to
    - audit_profile_id
    - compartment_id_in_subtree
    - display_name
    - is_override_global_retention_setting
    - is_paid_usage_enabled
    - state
    - target_database_group_id
    - target_id
    - target_type
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                                  = string
    access_level                                    = optional(string)
    audit_collected_volume_greater_than_or_equal_to = optional(string)
    audit_profile_id                                = optional(string)
    compartment_id_in_subtree                       = optional(bool)
    display_name                                    = optional(string)
    is_override_global_retention_setting            = optional(bool)
    is_paid_usage_enabled                           = optional(bool)
    state                                           = optional(string)
    target_database_group_id                        = optional(string)
    target_id                                       = optional(string)
    target_type                                     = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

