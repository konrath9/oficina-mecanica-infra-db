# Publica dados do RDS no SSM Parameter Store para outros repositorios (ex: oficina-mecanica-auth)
# lerem via data source, sem precisar de Terraform remote state entre repositorios.

resource "aws_ssm_parameter" "rds_endpoint" {
  name  = "/${var.project_name}/rds/endpoint"
  type  = "String"
  value = aws_db_instance.main.address

  tags = {
    Project = var.project_name
  }
}

resource "aws_ssm_parameter" "rds_port" {
  name  = "/${var.project_name}/rds/port"
  type  = "String"
  value = tostring(aws_db_instance.main.port)

  tags = {
    Project = var.project_name
  }
}

resource "aws_ssm_parameter" "rds_db_name" {
  name  = "/${var.project_name}/rds/db_name"
  type  = "String"
  value = aws_db_instance.main.db_name

  tags = {
    Project = var.project_name
  }
}

resource "aws_ssm_parameter" "rds_security_group_id" {
  name  = "/${var.project_name}/rds/security_group_id"
  type  = "String"
  value = aws_security_group.rds.id

  tags = {
    Project = var.project_name
  }
}
