provider "alicloud" {
  region = "cn-shanghai"
}

data "alicloud_cloud_sso_directories" "default" {

}

locals {
  directory_id = try(data.alicloud_cloud_sso_directories.default.directories[0].id, "")
}

# create a new group using existing directory
module "cloud_sso_group" {
  source = "../../"

  #alicloud_cloud_sso_directory
  create_directory = false

  #alicloud_cloud_sso_group
  create_group = true

  directory_id = local.directory_id
  group_name   = var.group_name
  description  = var.description

  #alicloud_cloud_sso_user
  create_user = false

  #alicloud_cloud_sso_user_attachment
  add_user_to_group = false

  #alicloud_cloud_sso_access_configuration
  create_access_configuration = false

}

# create a list new users and add users into existing group
module "cloud_sso_user" {
  source = "../../"

  #alicloud_cloud_sso_directory
  create_directory = false

  #alicloud_cloud_sso_group
  create_group = false

  #alicloud_cloud_sso_user
  create_user = true

  directory_id = local.directory_id
  users        = var.users

  #alicloud_cloud_sso_user_attachment
  add_user_to_group = true

  group_id = module.cloud_sso_group.group_id

  #alicloud_cloud_sso_access_configuration
  create_access_configuration = false

}

# create a list new access configurations
module "cloud_sso_access_configuration" {
  source = "../../"

  #alicloud_cloud_sso_directory
  create_directory = false

  #alicloud_cloud_sso_group
  create_group = false

  #alicloud_cloud_sso_user
  create_user = false

  #alicloud_cloud_sso_user_attachment
  add_user_to_group = false

  #alicloud_cloud_sso_access_configuration
  create_access_configuration = true

  directory_id          = local.directory_id
  access_configurations = var.access_configurations

}