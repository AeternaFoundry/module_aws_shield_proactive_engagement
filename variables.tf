variable "shield_proactive_engagements" {
  description = <<EOT
Map of shield_proactive_engagements, attributes below
Required:
    - enabled
Optional:
    - emergency_contact (block):
        - contact_notes (optional)
        - email_address (required)
        - phone_number (optional)
EOT

  type = map(object({
    enabled = bool
    emergency_contact = optional(list(object({
      contact_notes = optional(string)
      email_address = string
      phone_number  = optional(string)
    })))
  }))
}

