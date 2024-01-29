output "dynamodb-table-name" {
  value = aws_dynamodb_table.msk-dynamodb-tables.name
}

output "dynamodb-table-billing-mode" {
  value = aws_dynamodb_table.msk-dynamodb-tables.billing_mode
}

output "dynamodb-table-read-capacity" {
  value = aws_dynamodb_table.msk-dynamodb-tables.read_capacity
}

output "dynamodb-table-hash-key" {
  value = aws_dynamodb_table.msk-dynamodb-tables.hash_key
}

output "dynamodb-table-range-key" {
  value = aws_dynamodb_table.msk-dynamodb-tables.range_key
}