resource "aws_lambda_function" "this" {
        function_name = "HelloApp"
        filename      = "helloapp.zip"
        source_code_hash = data.archive_file.python_lambda_package.output_base64sha256
        role          = aws_iam_role.this.arn
        runtime       = "python3.7"
        handler       = "app.lambda_handler"
        timeout       = 10
}


resource "aws_iam_role" "this" {  
  name = "lambda-lambdaRole-waf"  
  assume_role_policy = data.aws_iam_policy_document.lambda_assum_role_policy.json
}