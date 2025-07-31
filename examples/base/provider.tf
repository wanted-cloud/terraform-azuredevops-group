
provider "azuredevops" {
  org_service_url = "https://dev.azure.com/wanted-solutions"
}

terraform {
    required_version = ">=1.11.0"
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">=1.11.0"
    }
  }
}