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
  --instance-type t2.micro \
  --key-name SSHserver \
  --associate-public-ip-address \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=awsue1devwebapp01},{Key=Env,Value=Dev}]' \
  --region us-east-1 \
  --count 1 \
  

# Web server installation
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2

#for terminating ec2 instance
aws ec2 terminate-instances --instance-ids i-031a1f2aa44217c9a