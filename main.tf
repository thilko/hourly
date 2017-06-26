provider "aws" {
  region     = "${var.region}"
}

resource "aws_instance" "hourly" {
  ami           = "ami-8da700e2"
  instance_type = "t2.micro"
  key_name = "deployer-key"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.hourly.id}"
}

output "ip" {
  value = "${aws_eip.ip.public_ip}"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = ""
}

