terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 1.0.0"
    }
  }
}

resource "snowflake_database" "env_database" {
  name                           = "${var.environment}_DB"
  drop_public_schema_on_creation = true
  comment                        = "${var.environment} DATABASE"
  data_retention_time_in_days    = 7
}

# resource "snowflake_schema" "domain_schema" {
#   database = snowflake_database.env_db.fully_qualified_name
#   for_each = var.domain
#   name     = each.value
#   comment  = "${each.value} business domain"
# }