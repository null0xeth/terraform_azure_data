variable "mail_enabled" {
  type        = bool
  default     = null
  description = "Determines whether mapped Azure groups should be mailed enabled. Set to true if all groups should be mail enabled."
}

variable "security_enabled" {
  type        = bool
  default     = null
  description = "Determines whether mapped Azure groups should be security enabled. Set to true if all groups should be security enabled."
}
