resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'storagelifecycle${uniqueString(resourceGroup().id)}'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
  properties: {
    accessTier: 'Hot'
    actions: {
      baseBlob: {
        tiertoCool: 'Tier to cool'
        daysAfterModificationGreaterThan: 30
      } tierToArchive: {
        daysAfterModificationGreaterThan: 90
      } tierToDelete: {
        daysAfterModificationGreaterThan: 365
      }
    }

  }
}
