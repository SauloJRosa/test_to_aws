resource "aws_lambda_function" "hello_world_lambda" {
  function_name = "hello_world_lambda"
  role          = aws_iam_role.lambda_execution_role.arn
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.10"
  filename      = "output/lambda_function.zip"

  source_code_hash = filebase64sha256("output/lambda_function.zip")

  environment {
    variables = {
      ENV = "dev"
    }
  }
}
