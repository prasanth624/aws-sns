module "sns" {
  source                      = "./module/sns"
  topic_name                  = "my-standard-sns.fifo"
  display_name                = "my-standard-sns"
  fifo_topic                  = true
  content_based_deduplication = false
  kms_master_key_id           = "alias/aws/sns"
  topic_access_policy         = file("./sns-access-policy.json")
  delivery_policy             = file("./sns-delivery-policy.json")
  tags = {
    Environment = "Dev"
    Team        = "DevOps"
  }
}

module "sns-subscription" {
  source               = "./module/sns-subscription"
  topic_arn            = module.sns.sns_topic_arn
  protocol             = "sqs"
  endpoint             = ""
  raw_message_delivery = false
}

