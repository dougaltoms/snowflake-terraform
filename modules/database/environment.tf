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

resource "snowflake_warehouse" "env_warehouse" {
  for_each = to_set(var.domain)
  name = "${var.environment}_${each.value}_WH"
  comment = "Warehouse for '${each.value}' domain in ${var.environment} environment"
  warehouse_size = "X-SMALL"
  auto_resume = true
  initially_suspended = true
  auto_suspend = 600
  statement_queued_timeout_in_seconds = 3600
}