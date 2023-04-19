# base url to access api end point 
output "base_url" {
  value = aws_api_gateway_deployment.this.invoke_url
}
