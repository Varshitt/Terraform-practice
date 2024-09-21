resource "aws_instance" "name" {
    ami="ami-066784287e358dad1"
instance_type = "t2.micro"
availability_zone = "us-east-1a"
key_name = "mykeypair"
tags = {
  Name=  "dev-7"
}

}
terraform {
  backend "s3" {
    bucket = "mynareshnaninewbucket"
    key="test/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-lock-dynmo"
    encrypt = true

  }
}