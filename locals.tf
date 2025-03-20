locals {
  # Common naming prefix for resources
  name_prefix = "${var.env}-tf"

  # Computed VM names
  vm_names = [for i in range(1, 6) : "${local.name_prefix}-vm-${i}"]

  # Dynamic CIDR base (incrementing per environment)
  cidr_base = {
    "practice" = "10.0"
    "qa"       = "10.1"
    "cert"     = "10.2"
    "prod"     = "10.3"
  }
  subnet_cidr = "${lookup(local.cidr_base, var.env)}.0.0/24"
}