variable "datapath_vpc_name" {
  description = "vpc name to configure default route to Valtix egress gateway"
}

variable "egress_vpc_name" {
  description = "network tag name used for datapath when creating Valtix egress gateway"
}

variable "egress_network_tag" {
  description = "datapath network tag name used for Valtix egress gateway"
}

variable "healthcheck_port" {
  description = "healthcheck port for Valtix egress gateway"
  default = "65534"
}
