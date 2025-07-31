<!-- BEGIN_TF_DOCS -->
# wanted-cloud/terraform-azuredevops-group

Terraform building block managing Azure DevOps groups and their memberships.

## Table of contents

- [Requirements](#requirements)
- [Providers](#providers)
- [Variables](#inputs)
- [Outputs](#outputs)
- [Resources](#resources)
- [Usage](#usage)
- [Contributing](#contributing)

## Requirements

The following requirements are needed by this module:

- <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) (>= 1.11.0)

## Providers

The following providers are used by this module:

- <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) (>= 1.11.0)

## Required Inputs

No required inputs.

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_description"></a> [description](#input\_description)

Description: Description of the Azure DevOps group.

Type: `string`

Default: `""`

### <a name="input_display_name"></a> [display\_name](#input\_display\_name)

Description: Display name of the Azure DevOps group.

Type: `string`

Default: `""`

### <a name="input_mail"></a> [mail](#input\_mail)

Description: Mail of the Azure DevOps group. Cannot be set together with `display_name` or `origin_id`.

Type: `string`

Default: `""`

### <a name="input_members"></a> [members](#input\_members)

Description: List of members descriptors to be added to the Azure DevOps group.

Type: `list(string)`

Default: `[]`

### <a name="input_metadata"></a> [metadata](#input\_metadata)

Description: Metadata definitions for the module, this is optional construct allowing override of the module defaults defintions of validation expressions, error messages, resource timeouts and default tags.

Type:

```hcl
object({
    resource_timeouts = optional(
      map(
        object({
          create = optional(string, "30m")
          read   = optional(string, "5m")
          update = optional(string, "30m")
          delete = optional(string, "30m")
        })
      ), {}
    )
    tags                     = optional(map(string), {})
    validator_error_messages = optional(map(string), {})
    validator_expressions    = optional(map(string), {})
  })
```

Default: `{}`

### <a name="input_origin_id"></a> [origin\_id](#input\_origin\_id)

Description: Origin ID of the Azure DevOps group. Cannot be set together with `display_name` or `mail`.

Type: `string`

Default: `""`

### <a name="input_project_name"></a> [project\_name](#input\_project\_name)

Description: Name of the Azure DevOps project to which the group belongs.

Type: `string`

Default: `""`

## Outputs

The following outputs are exported:

### <a name="output_group"></a> [group](#output\_group)

Description: The Azure DevOps group created by this module.

### <a name="output_members"></a> [members](#output\_members)

Description: List of members added to the Azure DevOps group.

## Resources

The following resources are used by this module:

- [azuredevops_group.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/group) (resource)
- [azuredevops_group_membership.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/group_membership) (resource)
- [azuredevops_project.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/project) (data source)

## Usage

> For more detailed examples navigate to `examples` folder of this repository.

Module was also published via Terraform Registry and can be used as a module from the registry.

```hcl
module "example" {
  source  = "wanted-cloud/..."
  version = "x.y.z"
}
```

### Basic usage example

The minimal usage for the module is as follows:

```hcl
module "template" {
    source = "../.."
}
```
## Contributing

_Contributions are welcomed and must follow [Code of Conduct](https://github.com/wanted-cloud/.github?tab=coc-ov-file) and common [Contributions guidelines](https://github.com/wanted-cloud/.github/blob/main/docs/CONTRIBUTING.md)._

> If you'd like to report security issue please follow [security guidelines](https://github.com/wanted-cloud/.github?tab=security-ov-file).
---
<sup><sub>_2025 &copy; All rights reserved - WANTED.solutions s.r.o._</sub></sup>
<!-- END_TF_DOCS -->