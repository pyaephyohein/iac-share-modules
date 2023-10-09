How to use 
```bash
module "mysql2s3" {
  source    = "git::https://github.com/pyaephyohein/iac-share-modules.git//mysql2s3bk"
  mysql2s3_backup_user="user"
  mysql2s3_backup_password="password"
  mysql2s3_backup_port="3306"
  mysql2s3_backup_host="localhost"
  mysql2s3_backup_bucketname ="s3-bucket" 
  mysql2s3_backup_aws_key="awsaccesskeyid"
  mysql2s3_backup_aws_secret ="awssecretkey"
  mysql2s3_backup_aws_region="aws-region"
  mysql2s3_backup_suspent_enabled="true"
  mysql2s3_backup_name="mydb-backup"
  mysql2s3_backup_version="0.1.0"
  mysql2s3_backup_namespace="cronjob"
}
```