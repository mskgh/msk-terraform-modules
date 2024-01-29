variable "msk-dynamodb-table" {
  type = object({
    table_name            = string
    billing_mode          = string
    read_capacity         = number
    write_capacity        = number
    hash_key              = string
    range_key             = string
    enable_time_to_exists = bool
  })
  description = "Dynamodb table metadata is required"
}

variable "tags" {
  type        = map(string)
  description = "Dynamodb tage tags are required"
}