resource "aws_security_group" "rds" {
  name        = "${var.project_name}-rds-sg"
  description = "Permite Postgres apenas de dentro da VPC do projeto"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "Postgres a partir de qualquer recurso dentro da VPC"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "${var.project_name}-rds-sg"
    Project = var.project_name
  }
}
