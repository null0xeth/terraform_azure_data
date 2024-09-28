###### AZUREAD: #######
data "azuread_application_published_app_ids" "well_known" {}
data "azuread_client_config" "current" {}
data "azuread_directory_role_templates" "current" {}

data "azuread_groups" "groups" {
  return_all       = true
  mail_enabled     = var.mail_enabled
  security_enabled = var.security_enabled
}

data "azuread_users" "users" {
  return_all = true
}

data "azuread_service_principal" "msgraph" {
  client_id = data.azuread_application_published_app_ids.well_known.result.MicrosoftGraph
}

###### AZURERM: #######
data "azurerm_subscription" "primary" {}
data "azurerm_client_config" "primary" {}

