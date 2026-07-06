output "api_management_gateway_apis" {
  description = "All api_management_gateway_api resources"
  value       = azurerm_api_management_gateway_api.api_management_gateway_apis
}
output "api_management_gateway_apis_api_id" {
  description = "List of api_id values across all api_management_gateway_apis"
  value       = [for k, v in azurerm_api_management_gateway_api.api_management_gateway_apis : v.api_id]
}
output "api_management_gateway_apis_gateway_id" {
  description = "List of gateway_id values across all api_management_gateway_apis"
  value       = [for k, v in azurerm_api_management_gateway_api.api_management_gateway_apis : v.gateway_id]
}

