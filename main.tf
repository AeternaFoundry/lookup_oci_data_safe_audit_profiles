data "oci_data_safe_audit_profiles" "data_safe_audit_profiles_lookup" {
  for_each = var.data_safe_audit_profiles_lookup

  compartment_id                                  = each.value.compartment_id
  access_level                                    = each.value.access_level
  audit_collected_volume_greater_than_or_equal_to = each.value.audit_collected_volume_greater_than_or_equal_to
  audit_profile_id                                = each.value.audit_profile_id
  compartment_id_in_subtree                       = each.value.compartment_id_in_subtree
  display_name                                    = each.value.display_name
  is_override_global_retention_setting            = each.value.is_override_global_retention_setting
  is_paid_usage_enabled                           = each.value.is_paid_usage_enabled
  state                                           = each.value.state
  target_database_group_id                        = each.value.target_database_group_id
  target_id                                       = each.value.target_id
  target_type                                     = each.value.target_type

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

