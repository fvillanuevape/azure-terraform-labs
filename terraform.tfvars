resource_group_apps_name     = "RGFCOMEU2D01"
resource_group_networks_name = "RGFCOMEU2NETD01"
tags = {
  Environment  = "Development"
  Department   = "IT"
  BusinessUnit = "Finance"
  Team         = "DevOps"
  DeployedBy   = "Terraform"
  Application  = "FinanceApp"
  ManagedBy    = "Terraform"
}
virtual_network_name          = "VNETFCOMEU2D01"
virtual_network_address_space = ["10.10.0.0/16"]
virtual_network_subnet_name   = "SNETFCOMEU2D01"
subnet_address_prefixes       = ["10.10.0.0/24"]
network_security_group_name   = "NSGFCOMEU2D01"
network_security_rule_name = "NSGRULEALLOWHTTPD01"