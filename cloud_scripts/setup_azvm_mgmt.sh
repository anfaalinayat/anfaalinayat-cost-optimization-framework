# FULL Azure Free-Tier VM setup in ONE GO

# 1) Install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash && \

# 2) Login to Azure
az login --use-device-code && \

# 3) Create SSH key (if not exists)
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -N "" && \

# 4) Create Resource Group
az group create --name myResourceGroup --location eastus && \

# 5) Create FREE-TIER VM (B1s is required for free tier)
az vm create \
  --resource-group myResourceGroup \
  --name myVM \
  --image UbuntuLTS \
  --size Standard_B1s \
  --admin-username azureuser \
  --ssh-key-values ~/.ssh/id_rsa.pub \
  --output table

  # Stop the VM when not using, To avoid charges:
az vm deallocate --resource-group myResourceGroup --name myVM
