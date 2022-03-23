# Data Architecture Project on AWS

[![Test on PR](https://github.com/neylsoncrepalde/edc-mod1-exercise-igti/actions/workflows/test.yaml/badge.svg)](https://github.com/Frndo1203/Portfolio/blob/main/.github/workflows/test.yaml)
[![Deploy](https://github.com/neylsoncrepalde/edc-mod1-exercise-igti/actions/workflows/deploy.yaml/badge.svg)](https://github.com/Frndo1203/Portfolio/blob/main/.github/workflows/test.yaml)

This Repo contains **coding** files and **documentation** for **projects** made for a **bootcamp** in **Data Engineering**. 

# Cases
## 1 - Delta Lake on AWS EMR

### Project Description:
- This project aims to provision an Lambda Function ('ExecuteEMR') for provisioning an EMR Cluster ("EMR-Fer-Delta") w/ 2 **m5.xlarge** instances, one for **Master Node** and the other for **worker node**.
- Also, this Cluster runs 2 **spark jobs**. The first one gets data from the **raw-data** bucket in s3, converts it to **Delta format** and writes on **staging-data** bucket on s3. The other one generates 50 fake records in order to **upsert** those records in **staging-data** and analyse this data in a jupyter notebook using the **EMR-Fer-Delta** Cluster.
- Furthermore, all of the **instances provisioning** was coded using **Terraform** w/ **GitHub Actions** for simulate **CI/CD**. 

### Solution Architecture:

![delta](img/edc_mod1_delta.png)

## 2 - Event Streaming w/ AWS Kinesis

### Project Description:

### Solution Architecture:

![kinesis](img/edc_mod1_delta-kinesis.png)

## 3 - Pipeline orchestration w/ Apache Airflow

### Project Description:

### Solution Architecture:

![airflow](img/edc_mod1_delta-airflow.png)
