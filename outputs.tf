output "mgmt_vpc_id" {
  value = module.vpc.mgmt_vpc_id
}

output "datapath_vpc_id" {
  value = module.vpc.datapath_vpc_id
}

output "egress_vpc_id" {
  value = module.vpc.egress_vpc_id
}

output "mgmt_subnet_id" {
  value = module.vpc.mgmt_subnet_id
}

output "datapath_subnet_id" {
  value = module.vpc.datapath_subnet_id
}

output "egress_subnet_id" {
  value = module.vpc.egress_subnet_id
}

output "instance_ip" {
  value = google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip
}

output "mgmt_network_tag" {
  value = module.vpc.mgmt_network_tag
}

output "datapath_network_tag" {
  value = module.vpc.datapath_network_tag
}

output "egress_network_tag" {
  value = module.vpc.egress_network_tag
}