# commons-lambda-layers
This repo stores python packages (zipped) and a CloudFormation script to deploy them as AWS Lambda layers

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