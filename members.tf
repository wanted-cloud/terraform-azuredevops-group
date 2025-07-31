resource "azuredevops_group_membership" "this" {
  count   = length(var.members) > 0 ? 1 : 0
  group   = azuredevops_group.this.descriptor
  members = var.members

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azuredevops_group_membership"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azuredevops_group_membership"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    update = try(
      local.metadata.resource_timeouts["azuredevops_group_membership"]["update"],
      local.metadata.resource_timeouts["default"]["update"]
    )
    delete = try(
      local.metadata.resource_timeouts["azuredevops_group_membership"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}