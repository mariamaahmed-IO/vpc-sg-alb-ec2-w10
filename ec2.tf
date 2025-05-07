resource "aws_instance" "server1" {
  ami                    = "ami-0f88e80871fd81e91"
  instance_type          = "t2.micro"
  subnet_id              = module.vpc.private_subnets[0]
  vpc_security_group_ids = [aws_security_group.sg1.id]
  user_data              = filebase64("setup.sh")

  tags = {
    Name = "Webserver-1"
    env  = "Dev"

  }
}

resource "aws_instance" "server2" {
  ami                    = "ami-0f88e80871fd81e91"
  instance_type          = "t2.micro"
  subnet_id              = module.vpc.private_subnets[1]
  vpc_security_group_ids = [aws_security_group.sg1.id]
  user_data              = filebase64("setup.sh")

  tags = {
    Name = "Webserver-2"
    env  = "Dev"

  }
}