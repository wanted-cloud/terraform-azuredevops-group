variable "description" {
  description = "Description of the Azure DevOps group."
  type        = string
  default     = ""
}

variable "project_name" {
  description = "Name of the Azure DevOps project to which the group belongs."
  type        = string
  default     = ""
}

// Cannot be set together with `origin_id` or `mail`
variable "display_name" {
  description = "Display name of the Azure DevOps group."
  type        = string
  default     = ""
}

variable "origin_id" {
  description = "Origin ID of the Azure DevOps group. Cannot be set together with `display_name` or `mail`."
  type        = string
  default     = ""

  validation {
    condition     = var.origin_id != "" ? alltrue([var.display_name == "", var.mail == ""]) : true
    error_message = "When origin_id is set, both display_name and mail must be empty strings."
  }
}

variable "mail" {
  description = "Mail of the Azure DevOps group. Cannot be set together with `display_name` or `origin_id`."
  type        = string
  default     = ""
}

variable "members" {
  description = "List of members descriptors to be added to the Azure DevOps group."
  type        = list(string)
  default     = []
}