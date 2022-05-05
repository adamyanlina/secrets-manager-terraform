variable "secrets_map" {
  type = map(object({
    secret_name  = string
    secret_value = string
    secret_key   = string
  }))
}