module "modules" {
  source = "../.."
  module_repos = [
    "figurate/terraform-tfe-registry-modules"
  ]
}

provider "tfe" {}
