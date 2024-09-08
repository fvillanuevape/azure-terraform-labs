variable "resource_group_location" {
  type        = string
  default     = "eastus2"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  default     = "RGFCOMEU2D01"
  description = "Resource group name."
}

variable "tags" {
  type = map(any)
  default = {
    Environment = "Dev"
  }
  description = "Value for tags."
}