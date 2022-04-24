# Update Cloud SSO Directory
directory_name              = "update-tf-testacc-directory"
mfa_authentication_status   = "Disabled"
scim_synchronization_status = "Enabled"
saml_identity_provider_configuration = [
  {
    sso_status                = "Enabled"
    encoded_metadata_document = "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPG1kOkVudGl0eURlc2NyaXB0b3IgZW50aXR5SUQ9Imh0dHBzOi8vY3kudGVzdC5jb20vc2FtbC9hc3NlcnRpb24vdGVzdCIgeG1sbnM6bWQ9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDptZXRhZGF0YSI+PG1kOklEUFNTT0Rlc2NyaXB0b3IgV2FudEF1dGhuUmVxdWVzdHNTaWduZWQ9ImZhbHNlIiBwcm90b2NvbFN1cHBvcnRFbnVtZXJhdGlvbj0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOnByb3RvY29sIj48bWQ6S2V5RGVzY3JpcHRvciB1c2U9InNpZ25pbmciPjxkczpLZXlJbmZvIHhtbG5zOmRzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjIj48ZHM6WDUwOURhdGE+PGRzOlg1MDlDZXJ0aWZpY2F0ZT5NSUlES3pDQ0FoT2dBd0lCQWdJQkFUQU5CZ2txaGtpRzl3MEJBUXNGQURCWU1Sa3dGd1lEVlFRREV4QmhiR2xpWVdKaFkyeHZkV1F1ClkyOXRNUnd3R2dZRFZRUUxFeE5KWkdWdWRHbDBlU0JOWVc1aFoyVnRaVzUwTVJBd0RnWURWUVFLRXdkQmJHbGlZV0poTVFzd0NRWUQKVlFRR0V3SkRUakFnRncweU1UQTFNRFl3T0RNMk1EQmFHQTh5TVRJeE1EUXhNakE0TXpZd01Gb3dXREVaTUJjR0ExVUVBeE1RWVd4cApZbUZpWVdOc2IzVmtMbU52YlRFY01Cb0dBMVVFQ3hNVFNXUmxiblJwZEhrZ1RXRnVZV2RsYldWdWRERVFNQTRHQTFVRUNoTUhRV3hwClltRmlZVEVMTUFrR0ExVUVCaE1DUTA0d2dnRWlNQTBHQ1NxR1NJYjNEUUVCQVFVQUE0SUJEd0F3Z2dFS0FvSUJBUURabHVOUlc2N1gKQlhVdFJMaG9BcTJ5d3VGRDd5WVpsOEliTUNJZ0NBdnJzekxhRmVQM0VvRWg4RjJ0M2FBWlJyZHJGMDdSbmNjTTZQRC9Ud2d4dzNoVgpDSmh2QnloNjh4UXVENXRja2pLei90Wnl3MVB5NXJPb05Va001N09ZL1AvZWc2MHg1SlJxaXdmZXZFcnJPK0xKWnVxMTNqTmpzRWFNCnRsRnhuTUkrY3FvUW9QbnZSUnVWNFVQdXJ0TEpJemNwQ2QvRnJxQjVvZTg5TjgySFpCcVE4eTdscVNsdHNuOTF0S05xRm44U3lnN3QKWitJQzRweWVsVDJVYit4RkFXRStjTWd4RVloR0R5UzVWSGNaWkc5OC90d0RWUHlRSjV5NWhJM0U2MWE3OW1mTkxHa0IvTGVXODF3MQpTZFM4SldQL3hsNWt6dDR0aXNkd0kyejJmMm8zQWdNQkFBRXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBTDFseUZIcnRET1R6bUZsCkpScmFsNlVLekRSSlU4djVOcGNPeTdlbVZBR2RMamNqRll5ZzR3cG1FZ3pOUWxscFZZd0VBRi9LbG5nOGxNbC8zekI2cWJEVFNSWnEKbFhpdDU4eHJsM0RiWnJ1OUdVOVMrdW9XYngrdVkyWStVNkpOOWhJSFRkcHc5SmFkTWY3akJzL2pFWWFuRDNObUU0SjltSThMeDNXYwpHL0lFLzNOOTY1NXM1UHJPTkc0MTgySXJFTG1TdzRrRkxDS0gzdi9IUnN0Ym9PSkttTWRuTHc4VGNaYWFNZHp2N1VEK1NoRlRPbFdmCmJrRmhISVZVSGNVSGN3S1kxSitjSmF0VVdPakNmWGZkNVl4Uy9aM3dhbURtbmRxTXJaT3kxUEh2dkhxNHFGQ3dsQTY1V2pzTDF6dkYKcE51MjQ2WFIxSHNRcVo4UTlvVk1kNU09PC9kczpYNTA5Q2VydGlmaWNhdGU+PC9kczpYNTA5RGF0YT48L2RzOktleUluZm8+PC9tZDpLZXlEZXNjcmlwdG9yPjxtZDpTaW5nbGVMb2dvdXRTZXJ2aWNlIEJpbmRpbmc9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpiaW5kaW5nczpIVFRQLVBPU1QiIExvY2F0aW9uPSJodHRwczovL2N5LnRlc3QuY29tL3NhbWwvbG9nb3V0L3Rlc3QiLz48bWQ6U2luZ2xlTG9nb3V0U2VydmljZSBCaW5kaW5nPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YmluZGluZ3M6SFRUUC1SZWRpcmVjdCIgTG9jYXRpb249Imh0dHBzOi8vY3kudGVzdC5jb20vc2FtbC9sb2dvdXQvdGVzdCIvPjxtZDpOYW1lSURGb3JtYXQ+dXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOm5hbWVpZC1mb3JtYXQ6cGVyc2lzdGVudDwvbWQ6TmFtZUlERm9ybWF0PjxtZDpTaW5nbGVTaWduT25TZXJ2aWNlIEJpbmRpbmc9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpiaW5kaW5nczpIVFRQLVBPU1QiIExvY2F0aW9uPSJodHRwczovL2N5LnRlc3QuY29tL3NhbWwvYXNzZXJ0aW9uL3Rlc3QiLz48bWQ6U2luZ2xlU2lnbk9uU2VydmljZSBCaW5kaW5nPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YmluZGluZ3M6SFRUUC1SZWRpcmVjdCIgTG9jYXRpb249Imh0dHBzOi8vY3kudGVzdC5jb20vc2FtbC9hc3NlcnRpb24vdGVzdCIvPjwvbWQ6SURQU1NPRGVzY3JpcHRvcj48L21kOkVudGl0eURlc2NyaXB0b3I+"
  }
]

# Update Cloud SSO Group
group_name  = "update-tf-testacc-group"
description = "update-tf-testacc-description"

# Update Cloud SSO User
users = [
  {
    user_name = "tf-testacc-user-01"
  },
  {
    user_name    = "tf-testacc-user-02"
    description  = "tf-testacc-user-02-description"
    display_name = "tf-testacc-user-02-display-name"
    email        = "158@163.com"
    first_name   = "zhu"
    last_name    = "xiao"
    status       = "Disabled"
  },
  {
    user_name = "tf-testacc-user-03"
    status    = "Enabled"
  },
  {
    user_name   = "tf-testacc-user-04"
    description = "cloud user"
    status      = "Enabled"
  }
]

# Update Cloud SSO Access Configuration
access_configurations = [
  {
    access_configuration_name = "tf-testacc-ac-01-name"
    description               = "update-tf-testacc-ac-01-description"
    permission_policies = [
      {
        permission_policy_document = <<EOF
            {
              "Statement":[
                {
                  "Action":"ecs:Create*",
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
        permission_policy_name     = "ecs-policy-update"
      }
    ]
    relay_state                      = "https://cloudsso.console.aliyun.com/testupdate"
    session_duration                 = 1900
    force_remove_permission_policies = true
  }
]