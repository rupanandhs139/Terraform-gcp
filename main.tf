provider "google" {
  project = var.project_id
  region  = "us-central1"
  zone    = "us-central1-a"
}

# Fetch latest Debian 11 image
data "google_compute_image" "debian_latest" {
  family  = "debian-11"
  project = "debian-cloud"
}

module "vpc" {
  source        = "./modules/vpc"
  vpc_name      = "${local.name_prefix}-vpc"
  subnet_name   = "${local.name_prefix}-subnet"
  subnet_cidr   = local.subnet_cidr
}

module "vm" {
  source         = "./modules/vm"
  subnet_name    = module.vpc.subnet_name
  image_list     = concat([data.google_compute_image.debian_latest.self_link], slice(var.image_list, 0, 4))  # Latest Debian + 4 from tfvars
  machine_types  = var.machine_types
  vm_names       = local.vm_names
}