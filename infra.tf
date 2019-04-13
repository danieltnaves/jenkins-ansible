provider "aws" {
  access_key = "--"
  secret_key = "--"
  region     = "--"
}

resource "aws_instance" "jenkins-server" {
  ami           = "ami-0de53d8956e8dcf80"
  instance_type = "t2.micro"
  key_name      = "servidor-estudos"
  security_groups = [
        "allow_jenkins"
    ]
}

resource "aws_security_group" "allow_jenkins" {
  name        = "allow_jenkins"
  description = "Allow Jenkins"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}