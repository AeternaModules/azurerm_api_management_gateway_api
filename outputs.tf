output "api_management_gateway_apis_api_id" {
  description = "Map of api_id values across all api_management_gateway_apis, keyed the same as var.api_management_gateway_apis"
  value       = { for k, v in azurerm_api_management_gateway_api.api_management_gateway_apis : k => v.api_id }
}
output "api_management_gateway_apis_gateway_id" {
  description = "Map of gateway_id values across all api_management_gateway_apis, keyed the same as var.api_management_gateway_apis"
  value       = { for k, v in azurerm_api_management_gateway_api.api_management_gateway_apis : k => v.gateway_id }
}

