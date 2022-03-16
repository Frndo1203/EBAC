import boto3
import pandas as pd

# Criar um cliente para interagir com o AWS S3
s3 = boto3.resource('s3')
s3_client = s3.meta.client
bucket = s3.Bucket("datalake-fer-igti-edc")

# download
s3_client.download_file('datalake-fer-igti-edc',
                        'data/BÍblia Arqueologica.pdf',
                        'biblia_arqueologica.pdf')

# upload
s3_client.upload_file('Fernando_accessKeys.csv',
                      'datalake-fer-igti-edc',
                      'data/access_keys.csv')

# delete folder
bucket.objects.filter(Prefix='access_keys.csv').delete()
