locals {
  # Get ID of cloud sso resources
  this_directory_id = var.create_directory ? concat(alicloud_cloud_sso_directory.this.*.id, [""])[0] : var.directory_id
  this_user_ids     = var.create_user ? alicloud_cloud_sso_user.this.*.user_id : var.add_user_to_group ? var.users.*.user_id : []
  this_group_id     = var.create_group ? concat(alicloud_cloud_sso_group.this.*.group_id, [""])[0] : var.group_id
}