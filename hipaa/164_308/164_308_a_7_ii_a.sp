benchmark "hipaa_164_308_a_7_ii_a" {
  title       = "164.308(a)(7)(ii)(A) Data backup plan"
  description = "Establish and implement procedures to create and maintain retrievable exact copies of electronic protected health information."
  children = [
    control.dynamodb_table_point_in_time_recovery_enabled,
    control.elasticache_redis_cluster_automatic_backup_retention_15_days,
    control.redshift_cluster_automatic_snapshots_min_7_days,
    control.rds_db_instance_in_backup_plan,
    control.ec2_instance_protected_by_backup_plan,
    control.backup_recovery_point_manual_deletion_disabled,
    control.ebs_volume_in_backup_plan,
    control.efs_file_system_protected_by_backup_plan,
    control.autoscaling_group_with_lb_use_health_check,
    control.vpc_vpn_tunnel_up,
    control.backup_recovery_point_encryption_enabled,
    control.ec2_instance_ebs_optimized,
    control.rds_db_cluster_aurora_protected_by_backup_plan,
    control.dynamodb_table_protected_by_backup_plan,
    control.ebs_volume_protected_by_backup_plan,
    control.dynamodb_table_in_backup_plan,
    control.rds_db_instance_backup_enabled,
    control.s3_bucket_cross_region_replication_enabled,
    control.rds_db_instance_protected_by_backup_plan,
    control.rds_db_instance_multiple_az_enabled,
    control.backup_plan_min_retention_35_days,
    control.dynamodb_table_auto_scaling_enabled,
    control.s3_bucket_versioning_enabled,
    control.fsx_file_system_protected_by_backup_plan,
    control.efs_file_system_in_backup_plan,
  ]

  tags = merge(local.hipaa_164_308_common_tags, {
    hipaa_item_id = "164_308_a_7_ii_a"
  })
}