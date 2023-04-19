data "aws_iam_policy_document" "lambda_assum_role_policy"{
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}


data "archive_file" "python_lambda_package" {  
  type = "zip"  
  source_file = "${path.module}/app/app.py" 
  output_path = "helloapp.zip"
}
