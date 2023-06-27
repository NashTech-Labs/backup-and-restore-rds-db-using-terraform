# backup-and-restore-rds-db-using-terraform 
This Terraform code will take the backup of the AWS RDS database every day, at the time configured through a variable, and restore with the latest saved backup. By default, AWS stores the RDS backups on S3 and its retention period can be configured as well
