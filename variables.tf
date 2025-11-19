variable "env" {
  type = string
  validation {
    condition     = var.env == "staging" || var.env == "prod"
    error_message = "The env value must be either 'staging' or 'prod'."
  }
}

variable "playful_web_domain" {
  type = string
}

variable "playful_web_host" {
  type = string
}

variable "fastly_api_key" {
  type = string
}

variable "porkbun_api_key" {
  type = string
}

variable "porkbun_secret_key" {
  type = string
}

variable "aws_access_key_id" {
  type = string
}

variable "aws_secret_access_key" {
  type = string
}