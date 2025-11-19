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
    profile                     = "fastly-us-east"
    skip_credentials_validation = true
    skip_region_validation      = true
    use_path_style              = true
    endpoints = {
      s3 = "https://us-east.object.fastlystorage.app"
    }
  }
}
