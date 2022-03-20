
resource "aws_s3_object" "spark_code" {
  bucket = aws_s3_bucket.datalake.id
  key    = "emr/pyspark/job_spark_from_tf.py"
  acl    = "private"

  source = "../jobs_emr.py"
  etag   = filemd5("../jobs_emr.py")

}

resource "aws_s3_object" "delta_insert" {
  bucket = aws_s3_bucket.datalake.id
  key    = "emr/pyspark/01_delta_spark_insert.py"
  acl    = "private"

  source = "../etl/01_delta_spark_insert.py"
  etag   = filemd5("../etl/01_delta_spark_insert.py")

}

resource "aws_s3_object" "delta_upsert" {
  bucket = aws_s3_bucket.datalake.id
  key    = "emr/pyspark/02_delta_spark_upsert.py"
  acl    = "private"

  source = "../etl/02_delta_spark_upsert.py"
  etag   = filemd5("../etl/02_delta_spark_upsert.py")

}
