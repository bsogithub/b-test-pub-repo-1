#####################################################################
##
##      Created 6/17/19 by ucdpadmin for cloud aws cloud. for b-test-terraform-project1
##
#####################################################################

#variable "subscription_id" {
#  type = "string"
#  description = "Generated"
#}
#
#variable "client_id" {
#  type = "string"
#  description = "Generated"
#}
#
#variable "client_secret" {
#  type = "string"
#  description = "Generated"
#}
#
#variable "tenant_id" {
#  type = "string"
#  description = "Generated"
#}

variable "my-linux-vm_name" {
  type = "string"
  description = "Generated"
}

variable "vm_location" {
  type = "string"
  description = "Generated"
}

variable "vm_size" {
  type = "string"
  description = "Generated"
}

variable "my-linux-vm_os_profile_name" {
  type = "string"
  description = "Specifies the os profile name."
  default = "profilename"
}

variable "my-linux-vm_azure_user" {
  type = "string"
  description = "Generated"
}

variable "my-linux-vm_azure_user_password" {
  type = "string"
  description = "Generated"
}

variable "my-linux-vm_publisher" {
  type = "string"
  default = "Canonical"
}

variable "my-linux-vm_offer" {
  type = "string"
  default = "UbuntuServer"
}

variable "my-linux-vm_sku" {
  type = "string"
  default = "16.04-LTS"
}

variable "my-linux-vm_version" {
  type = "string"
  default = "latest"
}

variable "my-linux-vm_disable_password_authentication" {
  type = "string"
  description = "Specifies whether to disable password authentication"
  default = "false"
}

variable "my-linux-vm_os_disk_name" {
  type = "string"
  description = "Specifies the disk name."
  default ="my-linux-vm_osdiskname"
}

variable "my-linux-vm_os_disk_caching" {
  type = "string"
  description = "Specifies the caching requirements. (Ex:ReadWrite)"
  default="ReadWrite"
}

variable "my-linux-vm_os_disk_create_option" {
  type = "string"
  description = "Specifies how the virtual machine should be created. Possible values are Attach (managed disks only) and FromImage."
}

variable "my-linux-vm_os_disk_managed_disk_type" {
  type = "string"
  description = "Specifies the type of managed disk to create. Value must be either Standard_LRS or Premium_LRS. Cannot be used when vhd_uri is specified"
  default = "Standard_LRS"
}

variable "my-linux-vm_os_disk_delete" {
  type = "string"
  description = "Delete the OS disk automatically when deleting the VM"
  default = true
}

variable "my-resource-group_group_name" {
  type = "string"
  description = "Resource Group Name"
  default = "my-resource-group"
}

