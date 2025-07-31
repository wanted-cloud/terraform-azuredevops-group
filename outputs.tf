output "group" {
  description = "The Azure DevOps group created by this module."
  value       = azuredevops_group.this
}

output "members" {
  description = "List of members added to the Azure DevOps group."
  value       = length(var.members) > 0 ? azuredevops_group_membership.this[0] : null

}