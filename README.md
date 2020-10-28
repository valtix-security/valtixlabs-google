# valtixlabs-google
This repo contains Terraform example that creates VPCs and a test instance.  After deployment, you should have 3 VPCs and a test Ubuntu instance

<b>How to use:</b>

#run the onboarding script to create IAM roles<br>
wget https://raw.githubusercontent.com/valtix-security/gists/main/valtix_gcp_service_account.sh<br>
chmod +x valtix_gcp_service_account.sh<br>
./valtix_gcp_service_account.sh<br><br>

#enable google cloud compute APIs<br>
gcloud services enable compute.googleapis.com<br><br>

#clone terraform template<br>
git clone https://github.com/valtix-security/valtixlabs-google.git<br>
cd valtixlabs-google<br>
terraform init<br>
terraform plan<br>
