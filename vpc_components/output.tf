output "vpc_id" {
    value = aws_vpc.my_aws_vpc
  
}
output "public_subnet1" {
    value = aws_subnet.public_subnet1
  
}
output "public_subnet2" {
    value = aws_subnet.private_subnet1
  
}
output "private_subnet1" {
    value = aws_subnet.private_subnet1
  
}
output "private_subnet2" {
    value = aws_subnet.private_subnet2
  
}