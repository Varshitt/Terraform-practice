module "dev" {
  source = "./day-2"
  ami_id="09yfcvhuiokjhgfcv"
  instance_type="t2.micro"
  key_name="sydney"
}