
resource "aws_s3_object" "spark_code" {
  bucket = aws_s3_bucket.datalake.id
  key    = "emr/pyspark/job_spark_from_tf.py"
  acl    = "private"

  source = "../jobs_emr.py"
  etag   = filemd5("../jobs_emr.py")

}
