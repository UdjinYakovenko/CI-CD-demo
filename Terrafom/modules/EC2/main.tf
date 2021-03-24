resource "aws_instance" "SonarQube" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  key_name      = "{var.keyname}"
  vpc_security_group_ids = [aws_security_group.Security_Group.id]

  tags = {
    Name = "SonarQube"
  }
}

resource "aws_instance" "Jenkins-Master" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  key_name      = "{var.keyname}"
  vpc_security_group_ids = [aws_security_group.Security_Group.id]

  tags = {
    Name = "Jenkins-Master"
  }
}

resource "aws_instance" "Jenkins-Slave" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  key_name      = "{var.keyname}"
  vpc_security_group_ids = [aws_security_group.Security_Group.id]

  tags = {
    Name = "Jenkins-Slave"
  }
}

resource "aws_instance" "Docker" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  key_name      = "{var.keyname}"
  vpc_security_group_ids = [aws_security_group.Security_Group.id]

  tags = {
    Name = "Docker"
  }
}

resource "aws_security_group" "Security_Group" {
  name        = "Security_Group"
  description = "Security_Group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Security_Group"
  }
}