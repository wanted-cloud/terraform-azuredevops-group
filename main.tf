/*
 * # wanted-cloud/terraform-azuredevops-group
 * 
 * Terraform building block managing Azure DevOps groups and their memberships.
 */

resource "azuredevops_group" "this" {
  scope       = var.origin_id == "" && var.mail == "" && var.project_name != "" ? data.azuredevops_project.this[0].id : null
  description = var.description

  mail         = var.mail != "" ? var.mail : null
  origin_id    = var.origin_id != "" ? var.origin_id : null
  display_name = var.display_name != "" ? var.display_name : null

  // We manage group members separately, so we ignore changes to the members attribute.
  lifecycle {
    ignore_changes = [
      members
    ]
  }

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azuredevops_group"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azuredevops_group"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    update = try(
      local.metadata.resource_timeouts["azuredevops_group"]["update"],
      local.metadata.resource_timeouts["default"]["update"]
    )
    delete = try(
      local.metadata.resource_timeouts["azuredevops_group"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}