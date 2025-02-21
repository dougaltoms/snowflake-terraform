locals {
  environments = ["PRD", "TST", "DEV"]
}

module "databases" {
  for_each = toset(local.environments)

  source      = "./modules/database"
  environment = each.key
}