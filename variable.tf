variable "secret_id" {
  description = "Secret ID"
  type = string
}

variable "mongodb_uri" {
  description = "MongoDB URI"
  type = string
}

variable "mongodb_host" {
  description = "MongoDB Host"
  type = string
}

variable "mongodb_username" {
  description = "MongoDB Username"
  type = string
}

variable "mongodb_password" {
  description = "MongoDB Password"
  type = string
}

variable "secret_description" {
    description = "Secret Description"
    type = string
    default = "SM Description"
}

variable "recovery_window_in_days" {
  description = "Specifies the number of days that AWS Secrets Manager waits before it can delete the secret. This value can be 0 to force deletion without recovery or range from 7 to 30 days."
  type        = number
}