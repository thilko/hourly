provider "aws" {
  region     = "eu-central-1c"
}

resource "aws_instance" "hourly" {
  ami           = "ami-1c45e273"
  instance_type = "t2.micro"
}
