// instancia ec2
resource "aws_instance" "Case-MedCloud" {
  ami           = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
  key_name = "DevOps-Teste"
  user_data = file("script.sh")

  vpc_security_group_ids = [
    aws_security_group.allow_ssh.id, aws_security_group.allow_http.id
  ]

  tags = {
    Name = "Case-MedCloud"
  }

  //Criar key pair para acesso remoto 
}