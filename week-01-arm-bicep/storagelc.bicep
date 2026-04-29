resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'name'
  location: location
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
      } tierTOArchive: {
        daysAfterModificationGreaterThan: 90
      } tierToDelete: {
        daysAfterModificationGreaterThan: 365
      }
    }

  }
}
