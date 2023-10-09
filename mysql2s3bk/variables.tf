
variable "mysql2s3_backup_name" {
  description = "Release Name for helm "
}

variable "mysql2s3_backup_version" {
  description = "release version for helm "
}
variable "mysql2s3_backup_user" {
  description = "Target database user to backup"
}

variable "mysql2s3_backup_password" {
  description = "Target database password to backup"
}

variable "mysql2s3_backup_host" {
  description = "Target database host to backup"
}
variable "mysql2s3_backup_port" {
  description = "Targets database port to backup"
  type = string
}
variable "mysql2s3_backup_bucketname" {
  description = "Dest bucket"
}

variable "mysql2s3_backup_aws_key" {
  description = "aws_access_key_id to access dest bucket"
}

variable "mysql2s3_backup_aws_secret" {
  description = "aws_secret_access_key to access dest bucket"
}

variable "mysql2s3_backup_suspent_enabled" {
  description = "suspend_enabled"
  default = "true"
}
variable "mysql2s3_backup_aws_region" {
  description = "aws region to access dest bucket"
}

variable "mysql2s3_backup_namespace" {
  description = "cronjob's namespace"
}
