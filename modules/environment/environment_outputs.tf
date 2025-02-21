output "env_db" {
  value = snowflake_database.env_db.fully_qualified_name
}

# output "warehouse" {
#   value = snowflake
# }

# output "domain_schema" {
#   value = {
#     finance = snowflake_schema.domain_schema.
#   }
# }