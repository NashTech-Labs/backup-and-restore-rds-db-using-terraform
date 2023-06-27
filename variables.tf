variable "allocated_storage" {
  type    = string
  default = "100"
}
variable "backup_retention_period" {
  type    = string
  default = "35"
}
variable "backup_window" {
  type    = string
  default = "07:34-08:04"
}
variable "identifier" {
  type    = string
  default = "test-db"
}
variable "instance_class" {
  type    = string
  default = "db.t4g.large"
}
variable "iops" {
  type    = string
  default = "2000"
}
variable "max_allocated_storage" {
  type    = string
  default = "1000"
}
variable "username" {
  type    = string
  default = "postgres"
}
variable "password" {
  type    = string
  default = "foobarbaz"
}
