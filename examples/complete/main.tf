provider "alicloud" {
  region = "cn-shanghai"
}

// create a new directory
module "cloud_sso_directory" {
  source = "../../"

  #alicloud_cloud_sso_directory
  create_directory = true

  directory_name                       = var.directory_name
  mfa_authentication_status            = var.mfa_authentication_status
  scim_synchronization_status          = var.scim_synchronization_status
  saml_identity_provider_configuration = var.saml_identity_provider_configuration

  #alicloud_cloud_sso_group
  create_group = false

  #alicloud_cloud_sso_user
  create_user = false

  #alicloud_cloud_sso_user_attachment
  add_user_to_group = false

  #alicloud_cloud_sso_access_configuration
  create_access_configuration = false

}

// create a new group using existing directory
module "cloud_sso_group" {
  source = "../../"

  #alicloud_cloud_sso_directory
  create_directory = false

  #alicloud_cloud_sso_group
  create_group = true

  directory_id = module.cloud_sso_directory.directory_id
  group_name   = var.group_name
  description  = var.description

  #alicloud_cloud_sso_user
  create_user = false

  #alicloud_cloud_sso_user_attachment
  add_user_to_group = false

  #alicloud_cloud_sso_access_configuration
  create_access_configuration = false

}

// create a list new users and add users into existing group
module "cloud_sso_user" {
  source = "../../"

  #alicloud_cloud_sso_directory
  create_directory = false

  #alicloud_cloud_sso_group
  create_group = false

  #alicloud_cloud_sso_user
  create_user = true

  directory_id = module.cloud_sso_directory.directory_id
  users        = var.users

  #alicloud_cloud_sso_user_attachment
  add_user_to_group = true

  group_id = module.cloud_sso_group.group_id

  #alicloud_cloud_sso_access_configuration
  create_access_configuration = false

}

// create a list new access configurations
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

  directory_id          = module.cloud_sso_directory.directory_id
  access_configurations = var.access_configurations

}