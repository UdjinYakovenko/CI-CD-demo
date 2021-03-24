resource "aws_instance" "SonarQube" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  key_name        = "${var.keyname}"
  vpc_security_group_ids = [aws_security_group.Security_Group.id]

  tags = {
    Name = "Main"
  }
}

resource "aws_instance" "Jenkins-Master" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  key_name        = "${var.keyname}"
  vpc_security_group_ids = [aws_security_group.Security_Group.id]

  tags = {
    Name = "Jenkins"
  }
}

resource "aws_instance" "Jenkins-Slave" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  key_name        = "${var.keyname}"
  vpc_security_group_ids = [aws_security_group.Security_Group.id]

  tags = {
    Name = "Jenkins"
  }
}

resource "aws_instance" "Docker" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  key_name        = "${var.keyname}"
  vpc_security_group_ids = [aws_security_group.Security_Group.id]

  tags = {
    Name = "Docker"
  }
}