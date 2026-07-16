output "api_management_gateway_apis_id" {
  description = "Map of id values across all api_management_gateway_apis, keyed the same as var.api_management_gateway_apis"
  value       = { for k, v in azurerm_api_management_gateway_api.api_management_gateway_apis : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_gateway_apis_api_id" {
  description = "Map of api_id values across all api_management_gateway_apis, keyed the same as var.api_management_gateway_apis"
  value       = { for k, v in azurerm_api_management_gateway_api.api_management_gateway_apis : k => v.api_id if v.api_id != null && length(v.api_id) > 0 }
}
output "api_management_gateway_apis_gateway_id" {
  description = "Map of gateway_id values across all api_management_gateway_apis, keyed the same as var.api_management_gateway_apis"
  value       = { for k, v in azurerm_api_management_gateway_api.api_management_gateway_apis : k => v.gateway_id if v.gateway_id != null && length(v.gateway_id) > 0 }
}

