
## Usage/Examples

```hcl
module "secrets-manager" {
  source = "git::https://github.com/adamyanlina/secrets-manager-terraform.git//modules/secrets-manager"

  secrets = {
    mongodb-uhkv = {
      description = "MongoDB URI & Host secrets"
      secret_key_value = {
        uri = "mongodb://username:pass/example.com"
        host = "localhost"
      }
      recovery_window_in_days = 7
    },
    mongodb-upkv = {
      description = "MongoDB Username & Password secrets"
      secret_key_value = {
        username = "muser"
        password = "topsecret"
      }
      tags = {
        app = "mongodbuser"
      }
      recovery_window_in_days = 7
    },
  }

  tags = {
    Owner       = "Lina Adamyan"
    Environment = "dev"
    Terraform   = true
  }
}
```
