resource "aws_sns_topic_subscription" "sns_subscription" {
  topic_arn            = var.topic_arn
  protocol             = var.protocol
  endpoint             = var.endpoint
  raw_message_delivery = var.raw_message_delivery
}
