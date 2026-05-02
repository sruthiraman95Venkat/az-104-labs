param location string  = resourceGroup().location
param adminUsername string = 'azureadmin'
@secure()
param adminPassword string 
param environmentName string = 'Dev'
var vNetName = '${environmentName}-vnet'
var subnetName = '${environmentName}-subnet'
var vmName = '${environmentName}-vm'
var publicIpName = '${environmentName}-publicip'
var nsgName = '${environmentName}-nsg'
var nicName = '${environmentName}-nic'
var vmSize = 'Standard_DS1_v2'
