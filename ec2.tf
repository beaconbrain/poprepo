resource "aws_instance" "web" {
  ami           = "ami-0aa2b7722dc1b5612"
  instance_type = "t2.micro"
}

terraform {
  backend "s3" {
    bucket = "thendralbucket"
    key    = "testpath/terraform.tfstate"
    region = "us-east-1"
  }
}

