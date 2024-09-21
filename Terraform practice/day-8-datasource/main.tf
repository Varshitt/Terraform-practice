data "aws_subnet" "selected" {
 filter {
   name = "tag:name"
   values = ["pub"]
 }
}
resource "aws_instance" "name" {
  ami = "ami-066784287e358dad1"
  instance_type = "t2.micro"
  key_name = "N.Virginia"
  subnet_id = data.aws_subnet.selected
}