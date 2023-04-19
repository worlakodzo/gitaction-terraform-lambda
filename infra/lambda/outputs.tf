output "aws_lambda_function_uri" {
  description = "uri use to connect api gateway"
  value       = aws_lambda_function.this.invoke_arn
}

output "aws_lambda_function_name" {
  description = "lambda function name"
  value       = aws_lambda_function.this.function_name
}