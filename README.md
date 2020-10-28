# valtixlabs-google
This repo contains Terraform example that creates VPCs and a test instance.  After deployment, you should have 3 VPCs and a test Ubuntu instance

<b>How to use:</b>

#run the onboarding script to create IAM roles
wget https://raw.githubusercontent.com/valtix-security/gists/main/valtix_gcp_service_account.sh
chmod +x valtix_gcp_service_account.sh
./valtix_gcp_service_account.sh

#enable google cloud compute APIs
gcloud services enable compute.googleapis.com

#clone terraform template
git clone https://github.com/valtix-security/valtixlabs-google.git
cd valtixlabs-google
terraform init
terraform plan
