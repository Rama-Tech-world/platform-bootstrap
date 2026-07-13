variable "aws_region" {
  description = "AWS region for bootstrap resources"
  type        = string

  validation {
    condition     = length(var.aws_region) > 0
    error_message = "aws_region must not be empty."
  }
}

variable "project_name" {
  description = "Project identifier"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "github_organization" {
  description = "GitHub organization or username"
  type        = string
}

variable "github_repository" {
  description = "Bootstrap repository name"
  type        = string
}