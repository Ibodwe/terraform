provider "aws"{
    region = "ap-northeast-2"
}

resource "aws_key_pair" "example"{
    key_name = "example-key"
    public_key = file(var.Access_key)
}
