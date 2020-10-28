# valtixlabs-google
This repo contains Terraform example that creates VPCs and a test instance.  After deployment, you should have 3 VPCs and a test Ubuntu instance

<b>How to use:</b>

Open GCloud shell in the project you wish to deploy<br>

#run the onboarding script to create IAM roles<br>
wget https://raw.githubusercontent.com/valtix-security/gists/main/valtix_gcp_service_account.sh<br>
chmod +x valtix_gcp_service_account.sh<br>
./valtix_gcp_service_account.sh<br>
#the output here will be used when setting up the Valtix gateways in the UI

#enable google cloud compute APIs<br>
gcloud services enable compute.googleapis.com<br>

#clone terraform template<br>
git clone https://github.com/valtix-security/valtixlabs-google.git<br>
cd valtixlabs-google<br>
terraform init<br>
terraform plan<br>
terraform apply<br>

#when you're finished.. clean it up
terraform destroy<br>
