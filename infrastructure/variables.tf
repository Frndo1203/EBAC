variable "base_bucket_name" {
  default = "datalake-igti-tf"
}

variable "ambiente" {
  default = "producao"
}

variable "numero_conta" {
  default = "713745082782"
}

variable "base_region" {
  default = "us-east-2"
}

variable "lambda_function_name" {
  default = "ExecuteEMR"
}

variable "key_pair_name" {
  default = "data-lake-key"
}

variable "airflow_subnet_id" {
  default = "subnet-07dfa62d04a3387ae"
}


variable "vpc_id" {
  default = "vpc-0d08f4760c769bd70"
}