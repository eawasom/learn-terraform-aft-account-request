module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "mafz1000+sandbox@gmail.com"
    AccountName               = "sandbox-accaft"
    ManagedOrganizationalUnit = "sandbox"
    SSOUserEmail              = "mafz1000+sandbox@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "ACCAFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group      = "non-prod"
    costcenter = "001"
  }

  account_customizations_name = "sandbox"
}
