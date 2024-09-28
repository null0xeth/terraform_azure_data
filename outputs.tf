output "azuread_tenant_id" {
  value = data.azuread_client_config.current.tenant_id
}

output "azuread_group_ids" {
  value = tolist(data.azuread_groups.groups.object_ids)
}

output "azuread_group_names" {
  value = tolist(data.azuread_groups.groups.display_names)
}

output "azuread_user_names" {
  value = tolist(data.azuread_users.users.user_principal_names)
}

output "azuread_user_object_ids" {
  value = tolist(data.azuread_users.users.object_ids)
}

output "directory_role_templates" {
  value = data.azuread_directory_role_templates.current.role_templates
}

output "client_config_object_id" {
  value = data.azuread_client_config.current.object_id
}

output "msgraph_resource_id" {
  value = data.azuread_application_published_app_ids.well_known.result.MicrosoftGraph
}

output "msgraph_app_role_ids" {
  value = data.azuread_service_principal.msgraph.app_role_ids
}

output "azurerm_sub_id" {
  value = data.azurerm_subscription.primary.id
}
