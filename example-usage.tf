module "secrets-manager" {
  source = "git::https://github.com/adamyanlina/secrets-manager-terraform.git//modules/secrets-manager"

  secrets = {
    (var.secret_id) = {
      description = var.secret_description
      secret_key_value = {
        mongodb_uri = var.mongodb_uri
        mongodb_host = var.mongodb_host
        mongodb_username = var.mongodb_username
        mongodb_password = var.mongodb_password
      }
      recovery_window_in_days = var.recovery_window_in_days
    }
  }

  tags = {
    Owner       = "Lina"
    Environment = "dev"
    Terraform   = true
  }
}