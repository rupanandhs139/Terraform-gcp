output "vpc_name" {
  value = module.vpc.vpc_name
}
output "subnet_name" {
  value = module.vpc.subnet_name
}
output "vm_external_ips" {
  value = module.vm.vm_external_ips
}