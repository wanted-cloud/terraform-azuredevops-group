data "azuredevops_project" "this" {
  count = var.project_name != "" ? 1 : 0
  name  = var.project_name
}