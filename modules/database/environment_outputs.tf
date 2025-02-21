output "env_database" {
  value = snowflake_database.env_database.fully_qualified_name
  description = "Fully qualified environment database name"
}

output "warehouse" {
  value = snowflake.env_warehouse.fully_qualified_name
  description = "Fully qualified environment/domain virtual warehouse"
}
