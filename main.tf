/**
 * # Terraform Registry Modules
 *
 * [![CI](https://github.com/figurate/terraform-tfe-registry-modules/actions/workflows/main.yml/badge.svg)](https://github.com/figurate/terraform-tfe-registry-modules/actions/workflows/main.yml)
 *
 *
 * ![Terraform Registry Modules](terraform_registry_modules.png)
 */
resource "tfe_registry_module" "modules" {
  count = length(var.module_repos)
  vcs_repo {
    display_identifier = var.module_repos[count.index]
    identifier         = var.module_repos[count.index]
    oauth_token_id     = ""
  }
}
