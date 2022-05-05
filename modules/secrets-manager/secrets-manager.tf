resource "aws_secretsmanager_secret" "secrets-manager" {
  for_each    = var.secrets_map
  name        = each.value["secret_name"]
  description = "Managed by Terraform"
}

resource "aws_secretsmanager_secret_version" "secret" {
  for_each = {
  for key, value in var.secrets_map :
  key => value
  if lookup(value, "secret_value", "") != ""
  }
  secret_id     = each.value["secret_name"]
  secret_string = <<EOF
   {
    "${each.value["secret_value"]}": "${each.value["secret_key"]}"
   }
EOF
  depends_on = [
    aws_secretsmanager_secret.secrets-manager
  ]
}