output "group" {
  description = "The Azure DevOps group created by this module."
  value       = azuredevops_group.this
}

output "members" {
  description = "List of members added to the Azure DevOps group."
  value       = azuredevops_group_membership.this

}