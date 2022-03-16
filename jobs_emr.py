# comentário para modificar o arquivo .py
import pyspark.sql.functions as f
from pyspark.sql import SparkSession

spark = (
    SparkSession.builder.appName("enemSpark")
    .getOrCreate()
)

# Ler os dados do enem 2020
df_enem = (spark.read
           .format("csv")
           .option("header", True)
           .option("inferSchema", True)
           .option("delimiter", ";")
           .load("s3://datalake-fer-igti-edc/raw-data/enem/"))


# Write ENEM data
(
    df_enem
    .write
    .mode("overwrite")
    .format("parquet")
    .partitionBy("year")
    .save("s3://datalake-fer-igti-edc/staging/enem/")
)
