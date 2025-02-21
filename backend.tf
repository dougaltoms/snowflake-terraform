terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 1.00"
    }
  }
}

provider "snowflake" {
  organization_name        = var.snowflake_credentials.organization_name
  account_name             = var.snowflake_credentials.account_name
  user                     = var.snowflake_credentials.user
  authenticator            = JWT
  private_key              = file("keys/snowflake_tf_snow_key.p8")
  preview_features_enabled = ["snowflake_table_resource", "snowflake_procedure_python_resource"]
}