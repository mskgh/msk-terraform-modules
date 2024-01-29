resource "aws_dynamodb_table" "msk-dynamodb-tables" {
  name           = var.msk-dynamodb-table["table_name"]
  billing_mode   = var.msk-dynamodb-table["billing_mode"]
  read_capacity  = var.msk-dynamodb-table["read_capacity"]
  write_capacity = var.msk-dynamodb-table["write_capacity"]
  hash_key       = var.msk-dynamodb-table["hash_key"]
  range_key      = var.msk-dynamodb-table["range_key"]

  attribute {
    name = var.msk-dynamodb-table["hash_key"]
    type = "S"
  }

  attribute {
    name = var.msk-dynamodb-table["range_key"]
    type = "S"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = var.msk-dynamodb-table["enable_time_to_exists"]
  }

  tags = var.tags
}