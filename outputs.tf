output "directory_id" {
  description = "The id of cloud sso directory."
  value       = local.this_directory_id
}
output "group_id" {
  description = "The self id of cloud sso group."
  value       = local.this_group_id
}
output "group_resource_id" {
  description = "The resource id of cloud sso group. Its format as <directory_id>:<group_id>."
  value       = format("%s:%s", local.this_directory_id, local.this_group_id)
}
output "user_ids" {
  description = "List of ids of cloud sso user."
  value       = local.this_user_ids
}
output "user_resource_ids" {
  description = "List of resource ids of cloud sso user. Each element format as <directory_id>:<user_id>"
  value       = [for id in local.this_user_ids : format("%s:%s", local.this_directory_id, id) if id != ""]
}
output "access_configuration_ids" {
  description = "List of ids of cloud sso access configuration."
  value       = alicloud_cloud_sso_access_configuration.this.*.access_configuration_id
}