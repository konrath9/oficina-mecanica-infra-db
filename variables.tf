variable "aws_region" {
  description = "Regiao AWS (fixa em us-east-1 no AWS Academy Learner Lab)"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Prefixo usado no nome/tags de todos os recursos"
  type        = string
  default     = "oficina-mecanica"
}

variable "vpc_cidr" {
  description = "CIDR da VPC dedicada deste projeto (separada da VPC default da conta)"
  type        = string
  default     = "10.0.0.0/16"
}

variable "db_username" {
  description = "Usuario master do RDS"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Senha master do RDS"
  type        = string
  sensitive   = true
}
