#####################################################################
##
##      Created 6/17/19 by ucdpadmin for cloud aws cloud. for b-test-terraform-project1
##
#####################################################################

terraform {
  required_version = "> 0.8.0"
}

provider "azurerm" {
#  subscription_id = "${var.subscription_id}"
#  client_id       = "${var.client_id}"
#  client_secret   = "${var.client_secret}"
#  tenant_id       = "${var.tenant_id}"
  version = "~> 1.1"
}

resource "azurerm_virtual_machine" "my-linux-vm" {
  name                  = "${var.my-linux-vm_name}"
  location              = "${var.vm_location}"
  vm_size               = "${var.vm_size}"
  resource_group_name   = "${var.my-resource-group_group_name}"
  tags {
    Name = "${var.my-linux-vm_name}"
  }
  os_profile {
    computer_name  = "${var.my-linux-vm_os_profile_name}"
    admin_username = "${var.my-linux-vm_azure_user}"
    admin_password = "${var.my-linux-vm_azure_user_password}"
  }
  storage_image_reference {
    publisher = "${var.my-linux-vm_publisher}"
    offer     = "${var.my-linux-vm_offer}"
    sku       = "${var.my-linux-vm_sku}"
    version   = "${var.my-linux-vm_version}"
  }
  os_profile_linux_config {
    disable_password_authentication = "${var.my-linux-vm_disable_password_authentication}"
  }
  storage_os_disk {
    name              = "${var.my-linux-vm_os_disk_name}"
    caching           = "${var.my-linux-vm_os_disk_caching}"
    create_option     = "${var.my-linux-vm_os_disk_create_option}"
    managed_disk_type = "${var.my-linux-vm_os_disk_managed_disk_type}"
  }
  delete_os_disk_on_termination = "${var.my-linux-vm_os_disk_delete}"
}

