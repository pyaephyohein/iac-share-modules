resource "helm_release" "mysql2s3_backup" {
  name         = var.mysql2s3_backup_name
  repository   = "https://charts.mgou.dev"
  chart        = "mysql2s3bk"
  version      = var.mysql2s3_backup_version
  namespace    = "cronjobs"
  force_update = true
  create_namespace = true

  values = [
    templatefile("./templates/values-mysql2s3bk.yaml.tpl",local.mysql2s3_env)
  ]
}

locals {
  mysql2s3_env = {
    MYSQL_USER= var.mysql2s3_backup_user
    MYSQL_PASSWORD= var.mysql2s3_backup_password
    MYSQL_PORT= tostring(var.mysql2s3_backup_port)
    MYSQL_HOST= var.mysql2s3_backup_host
    BUCKET_NAME= var.mysql2s3_backup_bucketname
    AWS_ACCESS_KEY_ID= var.mysql2s3_backup_aws_key
    AWS_SECRET_ACCESS_KEY= var.mysql2s3_backup_aws_secret
    AWS_DEFAULT_REGION= var.mysql2s3_backup_aws_region
    suspent_enabled = var.mysql2s3_backup_suspent_enabled
    SECRET_NAME = "${var.mysql2s3_backup_name}-mysql2s3-secret"
    }
}