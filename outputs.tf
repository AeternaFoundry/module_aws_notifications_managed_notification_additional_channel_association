output "notifications_managed_notification_additional_channel_associations_channel_arn" {
  description = "Map of channel_arn values across all notifications_managed_notification_additional_channel_associations, keyed the same as var.notifications_managed_notification_additional_channel_associations"
  value       = { for k, v in aws_notifications_managed_notification_additional_channel_association.notifications_managed_notification_additional_channel_associations : k => v.channel_arn if v.channel_arn != null && length(v.channel_arn) > 0 }
}
output "notifications_managed_notification_additional_channel_associations_managed_notification_arn" {
  description = "Map of managed_notification_arn values across all notifications_managed_notification_additional_channel_associations, keyed the same as var.notifications_managed_notification_additional_channel_associations"
  value       = { for k, v in aws_notifications_managed_notification_additional_channel_association.notifications_managed_notification_additional_channel_associations : k => v.managed_notification_arn if v.managed_notification_arn != null && length(v.managed_notification_arn) > 0 }
}

