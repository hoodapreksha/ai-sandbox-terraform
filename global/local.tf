locals {
  project = "ai-sandbox"
  environment = "sandbox"
  location = "canada central"

  # COmmon prefix for naming Azure resorces, e.g. ai-sandbox-rg 
  naming_prefix = "${local.project}-${local.environment}"
}