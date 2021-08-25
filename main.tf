#provider "azurerm" {
  ## AzureRM provider 2.x
  #version = "~>2.0"
  ## v2.x required "features" block
  #features {}
#}

# Create a resource group
resource "azurerm_resource_group" "MMS_IOT_FO" {
  name     = "mms-iot-rg"
  location = "North Central US"
  tags = {
    test = "Frank_MMS"
  }
}


# Create an Azure IoT Hub
resource "azurerm_iothub" "mmsiothubfo" {
  name                = "mmsiothubfo"
  resource_group_name = azurerm_resource_group.MMS_IOT_FO.name
  location            = "North Central US"

  sku {
    name     = "S1"
    capacity = 1
  }
}





