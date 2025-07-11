#Database config
resource "aws_dynamodb_table" "table1" {
    name = "table1"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "id"
    attribute {
        name = "id"
        type = "S"
    }
}
