locals {
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Repository  = "platform-bootstrap"
  }

  state_bucket_name = "${var.project_name}-${var.environment}-tf-state-${data.aws_caller_identity.current.account_id}"

  lock_table_name = "${var.project_name}-${var.environment}-tf-locks"

  terraform_role_name = "GitHubTerraformRole"

}