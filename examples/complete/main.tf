provider "alicloud" {
  region     = "cn-shanghai"
}

data "alicloud_cloud_sso_directories" "default" {}
// create a new directory
module "directory" {
  source                               = "../../"
  create_directory                     = length(data.alicloud_cloud_sso_directories.default.ids) > 0 ? false : true
  directory_name                       = var.directory_name
  mfa_authentication_status            = var.mfa_authentication_status
  saml_identity_provider_configuration = var.saml_identity_provider_configuration
  scim_synchronization_status          = var.scim_synchronization_status

  directory_id = length(data.alicloud_cloud_sso_directories.default.ids) > 0 ? data.alicloud_cloud_sso_directories.default.ids.0 : ""

  create_group                = false
  create_user                 = false
  add_user_to_group           = false
  create_access_configuration = false
}

// create a new group using existing directory
module "group" {
  source           = "../../"
  create_directory = false
  directory_id     = module.directory.directory_id

  create_group = true
  group_name   = var.group_name
  description  = var.description

  create_user                 = false
  add_user_to_group           = false
  create_access_configuration = false
}

// create a list new users using existing group and add them into group
module "user" {
  source           = "../../"
  create_directory = false
  directory_id     = module.directory.directory_id

  create_group = false
  group_id     = module.group.group_id

  create_user       = true
  users             = var.users
  add_user_to_group = true

  create_access_configuration = false
}

// create a list new access configurations
module "access-configurations" {
  source           = "../../"
  create_directory = false
  directory_id     = module.directory.directory_id

  create_group = false
  group_id     = module.group.group_id

  create_user       = false
  add_user_to_group = false

  create_access_configuration = true
  access_configurations       = var.access_configurations
}