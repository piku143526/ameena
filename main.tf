module "mysql" {
  source                                = "./modules/cloudsql/mysql"
  mysql_vm_name                         = "${format("%s","${var.client_name}-${var.envtype}-${var.mysql_vm_name}")}"
  mysql_verion                          = var.mysql_verion
  mysql_vm_tier                         = var.mysql_vm_tier
  mysql_vm_disk_type                    = var.mysql_vm_disk_type
  mysql_vm_disk_size                    = var.mysql_vm_disk_size
  mysql_vm_disk_autoresize              = var.mysql_vm_disk_autoresize
  mysql_vm_availability_type            = var.mysql_vm_availability_type
  mysql_binary_log_enabled              = var.mysql_binary_log_enabled
  mysql_backup_enabled                  = var.mysql_backup_enabled
  mysql_backup_time                     = var.mysql_backup_time
  mysql_transaction_log_retention_days  = var.mysql_transaction_log_retention_days
  mysql_retained_backups                = var.mysql_retained_backups
  mysql_backup_location                 = var.mysql_backup_location
  mysql_point_in_time_recovery_enabled  = var.mysql_point_in_time_recovery_enabled
  mysql_deletion_protection             = var.mysql_deletion_protection
  mysql_public_network                  = var.mysql_public_network
  mysql_private_network                 = "${format("%s","projects/noted-cider-362008/global/networks/${var.client_name}-${var.envtype}-${var.vpc_name}")}"

}
