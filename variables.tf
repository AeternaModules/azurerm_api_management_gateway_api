variable "api_management_gateway_apis" {
  description = <<EOT
Map of api_management_gateway_apis, attributes below
Required:
    - api_id
    - gateway_id
EOT

  type = map(object({
    api_id     = string
    gateway_id = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_gateway_api's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: api_id
  #   source:    [from api.ValidateApiID] !ok
  # path: api_id
  #   source:    [from api.ValidateApiID] err != nil
  # path: gateway_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: gateway_id
  #   source:    [from azure.ValidateResourceID] err != nil
}

