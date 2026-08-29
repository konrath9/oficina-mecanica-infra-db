output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_ids" {
  value = [aws_subnet.private_a.id, aws_subnet.private_b.id]
}

output "rds_security_group_id" {
  value = aws_security_group.rds.id
}

output "rds_endpoint" {
  value = aws_db_instance.main.endpoint
}

output "rds_address" {
  value = aws_db_instance.main.address
}

output "rds_db_name" {
  value = aws_db_instance.main.db_name
}
