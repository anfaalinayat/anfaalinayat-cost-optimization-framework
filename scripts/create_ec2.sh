#  CREATE EC2 INSTANCE
aws ec2 run-instances \
  --image-id ami-0ecb62995f68bb549 \
  --instance-type t2.micro \
  --key-name SSHserver \
  --associate-public-ip-address \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=awsue1devwebapp01},{Key=Env,Value=Dev}]' \
  --region us-east-1 \
  --user-data file://userdata/web_server.sh \
  --count 1 \
  
