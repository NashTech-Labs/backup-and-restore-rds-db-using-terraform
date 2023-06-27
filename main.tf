data "aws_db_snapshot" "db_snapshot" {
  most_recent            = true
  db_instance_identifier = "test-db"
}


resource "aws_db_instance" "rds" {
  allocated_storage         = var.allocated_storage
  backup_retention_period   = var.backup_retention_period
  backup_window             = var.backup_window
  delete_automated_backups  = false
  ca_cert_identifier        = "rds-ca"
  copy_tags_to_snapshot     = true
  customer_owned_ip_enabled = false
  deletion_protection       = false
  apply_immediately         = true
  enabled_cloudwatch_logs_exports = [
    "postgresql",
  ]
  engine                                = "postgres"
  engine_version                        = "14.6"
  iam_database_authentication_enabled   = false
  identifier                            = var.identifier
  snapshot_identifier                   = data.aws_db_snapshot.db_snapshot.id
  instance_class                        = var.instance_class
  iops                                  = var.iops
  license_model                         = "postgresql-license"
  maintenance_window                    = "fri:04:13-fri:04:43"
  max_allocated_storage                 = var.max_allocated_storage
  multi_az                              = false
  network_type                          = "IPV4"
  option_group_name                     = "default:postgres-14"
  parameter_group_name                  = "default.postgres14"
  username                              = var.username
  password                              = var.password
  performance_insights_enabled          = true
  performance_insights_retention_period = 7
  port                                  = 5432
  publicly_accessible                   = true
  skip_final_snapshot                   = true
  storage_encrypted                     = true
  storage_throughput                    = 0
  storage_type                          = "io1"

  lifecycle {
    ignore_changes = [snapshot_identifier]
  }
}
