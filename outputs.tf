output "shield_proactive_engagements_id" {
  description = "Map of id values across all shield_proactive_engagements, keyed the same as var.shield_proactive_engagements"
  value       = { for k, v in aws_shield_proactive_engagement.shield_proactive_engagements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "shield_proactive_engagements_emergency_contact" {
  description = "Map of emergency_contact values across all shield_proactive_engagements, keyed the same as var.shield_proactive_engagements"
  value       = { for k, v in aws_shield_proactive_engagement.shield_proactive_engagements : k => v.emergency_contact if v.emergency_contact != null && length(v.emergency_contact) > 0 }
}
output "shield_proactive_engagements_enabled" {
  description = "Map of enabled values across all shield_proactive_engagements, keyed the same as var.shield_proactive_engagements"
  value       = { for k, v in aws_shield_proactive_engagement.shield_proactive_engagements : k => v.enabled if v.enabled != null }
}

