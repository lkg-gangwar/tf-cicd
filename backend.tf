terraform {
  backend "azurerm" {
    resource_group_name  = "tf-backend"          # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "tfstatebackendlkg"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tf-backup"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}


  #  backendAzureRmResourceGroupName: 'tf-backend'
  #         backendAzureRmStorageAccountName: 'mytfstatefilelkg'
  #         backendAzureRmContainerName: 'tfstatefile'