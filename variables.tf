variable "resource_group_location" {
  type        = string
  default     = "eastus2"
  description = "Location of the resource group."
}

variable "resource_group_apps_name" {
  type        = string
  default     = "RGFCOMEU2D01"
  description = "Resource group name."
}

variable "resource_group_networks_name" {
  type        = string
  default     = "RGFCOMEU2NET01"
  description = "Resource group name."

}
variable "tags" {
  type = map(any)
  default = {
    Environment = "Dev"
  }
  description = "Value for tags."
}

variable "virtual_network_name" {
  type        = string
  default     = "vnet"
  description = "Name of the virtual network."
}

variable "virtual_network_address_space" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "Address space for the virtual network."
}

variable "virtual_network_subnet_name" {
  type        = string
  default     = "subnet"
  description = "Name of the subnet."

}

variable "subnet_address_prefixes" {
  type        = list(string)
  default     = ["10.0.0.0/24"]
  description = "Address prefixes for the subnet."
}

variable "network_security_group_name" {
  type        = string
  default     = "nsg"
  description = "Name of the network security group."

}
variable "network_security_rule_name" {
  type        = string
  default     = "nsg-rule"
  description = "Name of the network security rule."
  
}