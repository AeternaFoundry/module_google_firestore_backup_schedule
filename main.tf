resource "google_firestore_backup_schedule" "firestore_backup_schedules" {
  for_each = var.firestore_backup_schedules

  retention       = each.value.retention
  database        = each.value.database
  deletion_policy = each.value.deletion_policy
  project         = each.value.project

  dynamic "daily_recurrence" {
    for_each = each.value.daily_recurrence != null ? [each.value.daily_recurrence] : []
    content {
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "weekly_recurrence" {
    for_each = each.value.weekly_recurrence != null ? [each.value.weekly_recurrence] : []
    content {
      day = weekly_recurrence.value.day
    }
  }
}

