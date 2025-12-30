# FULL Azure Free-Tier VM setup in ONE GO

# 1) Install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
# verify
az version

# 2) Login to Azure / Authenticate to azcli

az login --service-principal \
 --username <...> \
 --password $CLIENT_SECRET \
 --tenant <...>

# Create RG
az group create \
 --name <RG name> \
 --location eastus

# 5) Create FREE-TIER VM (B1s is required for free tier)
az vm create \
  --resource-group myResourceGroup \
  --name myVM \
  --image UbuntuLTS \
  --size Standard_B1s \
  --admin-username azureuser \
  --ssh-key-values ~/.ssh/id_rsa.pub \
  --output table

# Web server installation
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2

# Delete azure vm
az vm delete \
 --resource-group <name> \
 --name <vm name> \
 --yes

 # Create RG
 az group delete --name <RG name>

