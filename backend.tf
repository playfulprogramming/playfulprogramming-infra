locals {
  env_key_map = {
    staging = "terraform-staging.tfstate"
    prod    = "terraform-prod.tfstate"
  }
}

terraform {
  backend "s3" {
    bucket                      = "tofu-remote-state"
    key                         = local.env_key_map[var.env]
    region                      = "us-east"
    access_key                  = var.aws_access_key_id
    secret_key                  = var.aws_secret_access_key
    skip_credentials_validation = true
    skip_region_validation      = true
    use_path_style              = true
    use_lockfile                = true
    endpoints = {
      s3 = "https://us-east.object.fastlystorage.app"
    }
  }
}
