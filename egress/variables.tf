variable "datapath_vpc_name" {
  description = "vpc name to configure default route to Valtix egress gateway"
  default     = "datapath-vpc"
}

variable "egress_vpc_name" {
  description = "vpc name used for datapath when creating Valtix egress gateway"
  default     = "egress-vpc"
}

variable "egress_network_tag" {
  description = "datapath network tag name used for Valtix egress gateway"
  default     = "valtix-egress"
}

variable "healthcheck_port" {
  description = "healthcheck port for Valtix egress gateway"
  default     = "65534"
}

variable "forwarding_rule_name" {
  description = "name of the forwarding rule for internal load balancer created by the Valtix egress gateway"
}

