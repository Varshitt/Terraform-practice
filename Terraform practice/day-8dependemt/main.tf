
  resource "aws_instance" "name" {
    ami="u85y6t9345689087re"
    instance_type = "t2.micro"
    key_name = "sydney.pem"
  
}
resource "aws_s3_bucket" "dependemt" {
  bucket = "56uygxcvmhgfh"
  depends_on = [ aws_instance.dependemt ]
}
