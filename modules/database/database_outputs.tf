output "env_database" {
  value = snowflake_database.env_database.fully_qualified_name
  description = "Fully qualified environment database name"
}

# output "warehouse" {
#   value = snowflake
# }

# output "domain_schema" {
#   value = {
#     finance = snowflake_schema.domain_schema.
#   }
# }