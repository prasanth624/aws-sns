resource "aws_sns_topic" "sns" {
  name                        = var.topic_name
  display_name                = var.display_name
  fifo_topic                  = var.fifo_topic
  content_based_deduplication = var.fifo_topic ? var.content_based_deduplication : null
  delivery_policy             = var.fifo_topic ? null : var.delivery_policy
  kms_master_key_id           = var.kms_master_key_id
  tags                        = var.tags
}

resource "aws_sns_topic_policy" "sns_policy" {
  count  = length(var.topic_access_policy) > 0 ? 1 : 0
  arn    = aws_sns_topic.sns.arn
  policy = var.topic_access_policy
}

