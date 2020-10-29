data "google_compute_forwarding_rule" "egress-ilb" {
  name = var.forwarding_rule_name
}

#Create egress route to Valtix gateway
resource "google_compute_route" "route-ilb" {
  name         = "default-to-valtix-gateway"
  dest_range   = "0.0.0.0/0"
  network      = var.datapath_vpc_name
  next_hop_ilb = data.google_compute_forwarding_rule.egress-ilb.id
  priority     = 1000
}

#Create default route in egress Valtix 
resource "google_compute_route" "default" {
  name        = "default-for-valtix-gateway"
  dest_range  = "0.0.0.0/0"
  network     = var.egress_vpc_name
  next_hop_ip = "default-internet-gateway"
  priority    = 900
}

#Create healthcheck firewall rule
resource "google_compute_firewall" "healthcheck-firewall-rule" {
  name    = "${var.egress_vpc_name}-healthcheck-rule"
  network = var.egress_vpc_name

  source_ranges = ["35.191.0.0/16", "130.211.0.0/22"]
  target_tags   = [var.egress_network_tag]

  allow {
    protocol = "tcp"
    ports    = [var.healthcheck_port]
  }
}
