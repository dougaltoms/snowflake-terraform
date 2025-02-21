variable "snowflake_credentials" {
  type = map(string)
  default = {
    "organization_name" = "amerihx"
    "account_name"      = "mr20287"
    "user"              = "TERRAFORM_SA"
  }
}