resource "aws_instance" "test" {
  ami = "ami-0ae8f15ae66fe8cda"
  instance_type = "t2.micro"
  availability_zone = "us-east-1"
  key_name = "N.Virginia"
  count = "2"
  tags = {
    Name="dav-1"
  }
}
variable "test" {
  type = list(string)
  default = [ "dev","test","prod" ]
  
}