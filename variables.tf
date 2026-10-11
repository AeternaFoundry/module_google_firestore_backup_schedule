variable "firestore_backup_schedules" {
  description = <<EOT
Map of firestore_backup_schedules, attributes below
Required:
    - retention
Optional:
    - database
    - deletion_policy
    - project
    - daily_recurrence (block):
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - weekly_recurrence (block):
        - day (optional)
EOT

  type = map(object({
    retention       = string
    database        = optional(string)
    deletion_policy = optional(string)
    project         = optional(string)
    daily_recurrence = optional(object({
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    weekly_recurrence = optional(object({
      day = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

