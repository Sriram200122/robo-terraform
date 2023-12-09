resource "aws_instance" "web" {
  ami = data.aws_ami.example.id
  instance_type = "t2.micro"
  security_groups = [aws_security_group.ssr.name]

  tags = {
    Name = var.name
  }
}

resource "null_resource" "ansible" {
  depends_on = [aws_instance.web, aws_route53_record.www]
  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = aws_instance.web.public_ip
    }
    inline = [
      "sudo set-hostname ${var.name}",
    ]
  }
}


data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_security_group" "ssr" {
  name        = var.name
  description = "Allow TLS inbound traffic"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.name
  }
}

resource "aws_route53_record" "www" {
  zone_id = "Z01768852GJ4FV6EFJ9QG"
  name    = "${var.name}-dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.web.private_ip]
}

variable "name" {}
