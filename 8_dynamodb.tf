resource "aws_dynamodb_table" "tfer--PositusMensagem" {
  attribute {
    name = "id"
    type = "N"
  }

  billing_mode = "PROVISIONED"
  hash_key     = "id"
  name         = "PositusMensagems"

  point_in_time_recovery {
    enabled = "false"
  }

  read_capacity  = "1"
  stream_enabled = "false"
  write_capacity = "1"
}

resource "aws_dynamodb_table" "tfer--PositusNumero" {
  attribute {
    name = "Id"
    type = "N"
  }

  billing_mode = "PROVISIONED"
  hash_key     = "Id"
  name         = "PositusNumero"

  point_in_time_recovery {
    enabled = "false"
  }

  read_capacity  = "1"
  stream_enabled = "false"
  write_capacity = "1"
}

resource "aws_dynamodb_table" "tfer--PositusTokens" {
  attribute {
    name = "id"
    type = "N"
  }

  billing_mode = "PROVISIONED"
  hash_key     = "id"
  name         = "PositusTokens"

  point_in_time_recovery {
    enabled = "false"
  }

  read_capacity  = "1"
  stream_enabled = "false"
  write_capacity = "1"
}


resource "aws_dynamodb_table" "ContratoRedirect" {
  attribute {
    name = "id"
    type = "N"
  }

  billing_mode = "PROVISIONED"
  hash_key     = "id"
  name         = "ContratoRedirect"

  point_in_time_recovery {
    enabled = "false"
  }

  read_capacity  = "1"
  stream_enabled = "false"
  write_capacity = "1"
}
