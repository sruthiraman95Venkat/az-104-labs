param storageAccountName string = 'mystorageaccount${uniqueString(resourceGroup().id)}'
param location string = resourceGroup().location
var storageSku = 'Standard_LRS'
storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'name'
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}
