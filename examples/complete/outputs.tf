output "directory_id" {
  description = "The id of cloud sso directory."
  value       = module.directory.directory_id
}
output "group_id" {
  description = "The self id of cloud sso group."
  value       = module.group.group_id
}
output "group_resource_id" {
  description = "The resource id of cloud sso group. Its format as <directory_id>:<group_id>."
  value       = module.group.group_resource_id
}
output "user_ids" {
  description = "List of ids of cloud sso user."
  value       = module.user.user_ids
}
output "user_resource_ids" {
  description = "List of resource ids of cloud sso user. Each element format as <directory_id>:<user_id>"
  value       = module.user.user_resource_ids
}
output "access_configuration_ids" {
  description = "List of ids of cloud sso access configuration."
  value       = module.access-configurations.access_configuration_ids
}