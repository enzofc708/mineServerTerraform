resource "azurerm_linux_virtual_machine" "mineServer" {
  name                            = "minecraftServer"
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  disable_password_authentication = false
  location                        = azurerm_resource_group.resourcegroup.location
  network_interface_ids           = [azurerm_network_interface.nic.id]
  resource_group_name             = azurerm_resource_group.resourcegroup.name
  size                            = var.machine_size

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}