# AWS CLI SETUP + BASIC EC2
# PREREQUISITES
sudo apt update
sudo apt install -y unzip curl
# (Optional) Ensure Python is installed
python3 --version
# If not installed:
# sudo apt install -y python3
#  INSTALL AWS CLI v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip -p /opt/aws
sudo ./aws/install
# VERIFY AWS CLI
aws --version
# CONFIGURE AWS CREDENTIALS
aws configure
# AWS Access Key ID:      <your_access_key_id>
# AWS Secret Access Key:  <your_secret_access_key>
# Default region name:    
# Default output format: 

#  CREATE EC2 INSTANCE
aws ec2 run-instances \
  --image-id ami-0ecb62995f68bb549 \
  --count 1 \
  --instance-type t2.micro

#for terminating ec2 instance
aws ec2 terminate-instances --instance-ids <INSTANCE_ID>