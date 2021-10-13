provider "aws" {                                                                                                                                                       
  region = "us-east-1"                                                                                                                                                 
}                                                                                                                                                                      
                                                                                                                                                                       
module "terraform-aws-lambda-function" {                                                                                                                               
  source  = "https://github.com/naveenkumar251/Lambdafunctions"                                                                                                                          
  #version = "~> 0.5.0"                                                                                                                                                 
                                                                                                                                                                       
  function_name = "python-function-newu11"                                                                                                                             
  description   = "Example Python Lambda Function that returns an HTTP response."                                                                                      
  filename      = "my-deployment-package.zip"                                                                                                                          
  runtime       = "python3.8"                                                                                                                                          
  handler       = "main.lambda_handler"                                                                                                                                
                                                                                                                                                                       
                                                                                                                                                                       
  timeout     = 30                                                                                                                                                     
  memory_size = 128                                                                                                                                                    
                                                                                                                                                                       
  role_arn = "arn:aws:iam::059062539581:role/LambdaNewRoleU11"                                                                                                         
}                                                                                                                                                                      
