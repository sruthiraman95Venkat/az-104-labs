// Broken storage.bicep - find the errors!
param storageAccountName string = 'mystorage${uniqueString(resourceGroup().id)}'
param location string = resourceGroup().location
param environment string = 'dev'

var storageSku = 'Standard_LRS'
var storageKind = 'StorageV2'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: storageSku
  }
  kind: storageKind
  tags: {
    environment: environment
    deployedBy: 'ARM Template'
  }
}

output storageAccountId string = storageAccount.id
output storageAccountName string = storageAccount.name
