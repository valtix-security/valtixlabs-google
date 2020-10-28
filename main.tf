provider "google" {
  credentials = file("../valtix_key.json")
  project     = var.project_name
  region      = "us-west1"
}

module "vpc" {
  source               = "https://github.com/valtix-security/terraform-google-valtix-vpc.git"
  mgmt_subnet_cidr     = "10.2.0.0/24"
  datapath_subnet_cidr = "10.3.0.0/24"
  egress_subnet_cidr   = "10.4.0.0/24"
  region               = "us-west1"
  mgmt_vpc_name        = "mgmt-vpc"
  datapath_vpc_name    = "datapath-vpc"
  egress_vpc_name      = "egress-vpc"
  mgmt_subnet_name     = "mgmt-subnet"
  datapath_subnet_name = "datapath-subnet"
  egress_subnet_name   = "egress-subnet"
}

resource "google_compute_instance" "vm_instance" {
  name         = "prod-web1a"
  machine_type = "f1-micro"
  zone         = "us-west1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1604-lts"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network    = module.vpc.datapath_vpc_id
    subnetwork = module.vpc.datapath_subnet_id
    access_config {
    }
  }
  metadata_startup_script = file("./startup.sh")
}