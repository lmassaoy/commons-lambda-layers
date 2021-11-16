# commons-lambda-layers
This repo stores python packages (zipped) and a CloudFormation script to deploy them as AWS Lambda layers


## Requirements
- AWS CLI installed
- IAM user configured in the AWS CLI with permissions to:
    - upload files into Amazon S3 bucket (store the zipped packages)
    - manage AWS Lambda layers

## How to deploy the stack

There are 2 options to be followed in order to deploy the stack:
1. Editing the shell scripts (recommended for new users)
2. Passing the parameters as argments in the shell invocation

### Step 1

- Edit the shell script [cloudformation_package.sh](commons/cloudformation_package.sh) including the bucket name where the zipped packages will be sent and the AWS CLI profile that will be used OR pass these parameters as argments
- Run the shell script:
    ```
    $ sh commons/cloudformation_package.sh
    ```
### Step 2

- Edit the shell script [cloudformation_deploy.sh](commons/cloudformation_deploy.sh) including the bucket name where the packaged template will be sent, the AWS CLI profile that will be used, the CloudFormation stack name, and the chosen region OR pass these parameters as argments
- Run the shell script:
    ```
    $ sh commons/cloudformation_deploy.sh
    ```


## Avaliable packages
### Python
- [AWS Data Wrangler](https://github.com/awslabs/aws-data-wrangler)
    - Pandas on AWS - Easy integration with Athena, Glue, Redshift, Timestream, QuickSight, Chime, CloudWatchLogs, DynamoDB, EMR, SecretManager, PostgreSQL, MySQL, SQLServer and S3 (Parquet, CSV, JSON and EXCEL)
- [AWS Lambda Powertools](https://github.com/awslabs/aws-lambda-powertools-python)
    - A suite of utilities for AWS Lambda Functions that makes tracing with AWS X-Ray, structured logging and creating custom metrics asynchronously easier
- [Pytz](https://pypi.org/project/pytz/)
    - pytz brings the Olson tz database into Python. This library allows accurate and cross platform timezone calculations using Python 2.4 or higher. It also solves the issue of ambiguous times at the end of daylight saving time, which you can read more about in the Python Library Reference (datetime.tzinfo)

## Changelog
1.0 Implementing the Python packages:
- AWS Data Wrangler
- AWS Lambda Powertools
- Pytz