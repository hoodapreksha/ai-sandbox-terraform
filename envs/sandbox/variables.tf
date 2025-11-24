variable "location" {
  description = "Azure region for sandbox environment"
  type        = string
}

variable "project" {
  description = "Short project name used for tagging"
  type        = string
}

variable "environment" {
  description = "Environment name (sandbox/dev/prod)"
  type        = string
}

variable "owner" {
  description = "Owner of this environment"
  type        = string

}