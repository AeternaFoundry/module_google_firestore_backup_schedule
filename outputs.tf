output "firestore_backup_schedules_id" {
  description = "Map of id values across all firestore_backup_schedules, keyed the same as var.firestore_backup_schedules except keys with no id are omitted"
  value       = { for k, v in google_firestore_backup_schedule.firestore_backup_schedules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "firestore_backup_schedules_daily_recurrence" {
  description = "Map of daily_recurrence values across all firestore_backup_schedules, keyed the same as var.firestore_backup_schedules except keys with no daily_recurrence are omitted"
  value       = { for k, v in google_firestore_backup_schedule.firestore_backup_schedules : k => one(v.daily_recurrence) if v.daily_recurrence != null && length(v.daily_recurrence) > 0 }
}
output "firestore_backup_schedules_database" {
  description = "Map of database values across all firestore_backup_schedules, keyed the same as var.firestore_backup_schedules except keys with no database are omitted"
  value       = { for k, v in google_firestore_backup_schedule.firestore_backup_schedules : k => v.database if v.database != null && length(v.database) > 0 }
}
output "firestore_backup_schedules_deletion_policy" {
  description = "Map of deletion_policy values across all firestore_backup_schedules, keyed the same as var.firestore_backup_schedules except keys with no deletion_policy are omitted"
  value       = { for k, v in google_firestore_backup_schedule.firestore_backup_schedules : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "firestore_backup_schedules_name" {
  description = "Map of name values across all firestore_backup_schedules, keyed the same as var.firestore_backup_schedules except keys with no name are omitted"
  value       = { for k, v in google_firestore_backup_schedule.firestore_backup_schedules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "firestore_backup_schedules_project" {
  description = "Map of project values across all firestore_backup_schedules, keyed the same as var.firestore_backup_schedules except keys with no project are omitted"
  value       = { for k, v in google_firestore_backup_schedule.firestore_backup_schedules : k => v.project if v.project != null && length(v.project) > 0 }
}
output "firestore_backup_schedules_retention" {
  description = "Map of retention values across all firestore_backup_schedules, keyed the same as var.firestore_backup_schedules except keys with no retention are omitted"
  value       = { for k, v in google_firestore_backup_schedule.firestore_backup_schedules : k => v.retention if v.retention != null && length(v.retention) > 0 }
}
output "firestore_backup_schedules_weekly_recurrence" {
  description = "Map of weekly_recurrence values across all firestore_backup_schedules, keyed the same as var.firestore_backup_schedules except keys with no weekly_recurrence are omitted"
  value       = { for k, v in google_firestore_backup_schedule.firestore_backup_schedules : k => one(v.weekly_recurrence) if v.weekly_recurrence != null && length(v.weekly_recurrence) > 0 }
}

