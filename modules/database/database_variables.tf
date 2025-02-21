variable "environment" {
  type        = string
  description = "Environment name"
  
  validation {
    condition = contains(["PRD", "TST", "DEV"], var.environment)
    error_message = "Valid environment types are 'PRD', 'TST', 'DEV'"
  }
  
}

# variable "domain" {
# type = list(string)
#   default = [ "FINANCE", "COMMERCIAL", "IT", "HR"]
#   description = "Business domain e.g. Finance"
# }