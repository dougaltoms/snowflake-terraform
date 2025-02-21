variable "environment" {
  type        = string
  default     = "PRD"
  validation {
    condition = var.environment in ["PRD", "TST", "DEV"]
    error_message = "Valid environment types are 'PRD', 'TST', 'DEV'"
  }
  description = "Environment name"
}

variable "domain" {
type = list(string)
  default = [ "FINANCE", "COMMERCIAL", "IT", "HR"]
  description = "Business domain e.g. Finance"
}