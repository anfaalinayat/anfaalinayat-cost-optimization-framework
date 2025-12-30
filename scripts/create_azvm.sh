az vm create \
  --resource-group azrue1devcof-rg01 \
  --name azrue1devwebapp01 \
  --image Ubuntu2204 \
  --size Standard_B1s \
  --admin-username ubuntu \
  --ssh-key-values ~/.ssh/id_rsa.pub \
  --user-data ./userdata/web_server.sh \
  --public-ip-sku Standard