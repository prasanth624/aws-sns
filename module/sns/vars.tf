variable "topic_name" {
  description = "The base name of the SNS topic"
  type        = string
}
variable "display_name" {
  description = "The display name of the SNS topic"
  type        = string
}
variable "fifo_topic" {
  description = "Enable FIFO (First-In-First-Out) topic"
  type        = bool
  default     = false
}

variable "content_based_deduplication" {
  description = "Enable content-based deduplication (Only for FIFO topics)"
  type        = bool
  default     = false
}

variable "topic_access_policy" {
  description = "The JSON-formatted policy for the SNS topic"
  type        = string
  default     = ""
}

variable "delivery_policy" {
  type    = string
  default = ""
}

variable "tags" {
  description = "Tags to apply to the SNS topic"
  type        = map(string)
  default     = {}
}

variable "kms_master_key_id" {
  type    = string
  default = "alias/aws/sns"
}

