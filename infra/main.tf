module "lambda" {
  source = "./lambda"

}

module "api" {
  source                   = "./api"
  aws_lambda_function_name = module.lambda.aws_lambda_function_name
  aws_lambda_function_uri  = module.lambda.aws_lambda_function_uri
}
