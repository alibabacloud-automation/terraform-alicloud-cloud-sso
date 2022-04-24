#####################
# Cloud SSO Directory
#####################
variable "directory_name" {
  description = "The name of a new cloud sso directory."
  type        = string
  default     = "tf-testacc-directory"
}

variable "mfa_authentication_status" {
  description = "The mfa authentication status. Valid values: Enabled or Disabled. Default to Enabled."
  type        = string
  default     = "Enabled"
}

variable "scim_synchronization_status" {
  description = "The scim synchronization status. Valid values: Enabled or Disabled. Default to Disabled."
  type        = string
  default     = "Disabled"
}

variable "saml_identity_provider_configuration" {
  description = "The saml identity provider configuration. See: https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cloud_sso_directory#saml_identity_provider_configuration"
  type        = list(map(string))
  default = [
    {
      sso_status                = "Disabled"
      encoded_metadata_document = ""
    }
  ]
}

#####################
# Cloud SSO Group
#####################
variable "group_name" {
  description = "The name of a new cloud sso user group."
  type        = string
  default     = "tf-testacc-group"
}

variable "description" {
  description = "The description of a new cloud sso user group."
  type        = string
  default     = "tf-testacc-description"
}

#####################
# Cloud SSO User
#####################
variable "users" {
  description = "List of maps of cloud sso access configuration permission policies. See https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cloud_sso_access_configuration#permission_policies"
  type        = list(map(string))
  default = [
    {
      user_name = "tf-testacc-user-01"
    },
    {
      user_name    = "tf-testacc-user-02"
      description  = "tf-testacc-user-02-description"
      display_name = "tf-testacc-user-02-display-name"
      email        = "abc@163.com"
      first_name   = "zhu"
      last_name    = "xiao"
      status       = "Enabled"
    },
    {
      user_name = "tf-testacc-user-03"
      status    = "Disabled"
    }
  ]
}

#####################
# Cloud SSO Access Configuration
#####################
variable "access_configurations" {
  description = "List of maps of cloud sso access configurations. See https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cloud_sso_access_configuration"
  type = list(object({
    access_configuration_name        = string
    description                      = string
    permission_policies              = list(map(string))
    relay_state                      = string
    session_duration                 = number
    force_remove_permission_policies = bool
  }))
  default = [
    {
      access_configuration_name = "tf-testacc-ac-01-name"
      description               = "tf-testacc-ac-01-description"
      permission_policies = [
        {
          permission_policy_document = <<EOF
            {
              "Statement":[
                {
                  "Action":"ecs:Get*",
                  "Effect":"Allow",
                  "Resource":[
                    "*"
                  ]
                }
              ],
              "Version": "1"
            }
          EOF
          permission_policy_type     = "Inline"
          permission_policy_name     = "ecs-policy"
        }
      ]
      relay_state                      = "https://cloudsso.console.aliyun.com/test1"
      session_duration                 = 1800
      force_remove_permission_policies = true
    },
    {
      access_configuration_name = "tf-testacc-ac-02-name"
      description               = "tf-testacc-ac-02-description"
      permission_policies = [
        {
          permission_policy_document = <<EOF
            {
              "Statement":[
                {
                  "Action":"vpc:Get*",
                  "Effect":"Allow",
                  "Resource":[
                    "*"
                  ]
                }
              ],
              "Version": "1"
            }
          EOF
          permission_policy_type     = "Inline"
          permission_policy_name     = "vpc-policy"
        }
      ]
      relay_state                      = "https://cloudsso.console.aliyun.com/test2"
      session_duration                 = 1800
      force_remove_permission_policies = true
    }
  ]
}