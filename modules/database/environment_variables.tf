variable "environment" {
  type        = string
  description = "Environment name"
  
  validation {
    condition = contains(["PRD", "TST", "DEV"], var.environment)
    error_message = "Valid environment types are 'PRD', 'TST', 'DEV'"
  }
  
}

variable "domain" {
type = list(string)
  description = "Business domain e.g. Finance"

  validation {
    condition = contains(["FINANCE", "COMMERCIAL", "IT", "HR"], var.domain)
    error_message = "Valid environment types are 'PRD', 'TST', 'DEV'"
  }
}