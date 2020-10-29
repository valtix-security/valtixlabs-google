# valtixlabs-google
This repo contains Terraform example that creates VPCs and a test instance.  After deployment, you should have 3 VPCs and a test Ubuntu instance that is running Apache web services listening on port 80.

## How to use:

Open GCloud shell in the project you wish to deploy<br>

## GCP Valtix onboarding script
wget https://raw.githubusercontent.com/valtix-security/gists/main/valtix_gcp_service_accounts/valtix_gcp_service_account.sh<br>
chmod +x valtix_gcp_service_account.sh<br>
./valtix_gcp_service_account.sh<br>

#enable google cloud compute & IAM APIs<br>
gcloud services enable compute.googleapis.com<br>
gcloud services enable iam.googleapis.com

#clone terraform template<br>
git clone https://github.com/valtix-security/valtixlabs-google.git<br>
cd valtixlabs-google<br>
terraform init<br>
terraform plan<br>
terraform apply<br>

#deploy Valtix gateways<br>
You can now deploy the Valtix ingress gateway into datapath-vpc and Valtix egress gateway into egress-vpc.  Each of these gateways will also have a connection into mgmt-vpc for management.<br>

(Optional) for testing Egress, please follow the instructions here after creating your Valtix gateways:
https://prod1-dashboard.vtxsecurityservices.com/static/docs/implementation/gcp_egress/

#when you're finished.. clean it up<br>
terraform destroy<br>

<img src="https://raw.githubusercontent.com/valtix-security/valtixlabs-google/master/ValtixLabs-Google-diag.png">
