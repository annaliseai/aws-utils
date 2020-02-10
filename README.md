#  AWS Utilities Docker Image

This docker image contains commonly used utilities and AWS CLI utilities.  It is designed to be somewhat of a general purpose Docker image for use in CI/CD pipelines.

The installed utilities include:

- AWS Utils
  - AWS CLI
  - AWS SSM Session Manager Plugin for AWS CLI
  - SAM CLI
  - boto3 (Python AWS SDK)

- System Utils
  - tar
  - zip/unzip
  - jq
  - curl
  - wget

## How to use

Pull this Image

```
docker pull annaliseai/aws-utils
```

The Makefile contains an example run command that can be used as a starting point to get you started.


## References

- https://aws.amazon.com/cli/
- https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html
- https://github.com/awslabs/aws-sam-cli
- https://boto3.amazonaws.com/v1/documentation/api/latest/index.html
