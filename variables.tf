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
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

