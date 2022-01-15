# aws-cli-docker
Docker image for the [AWS CLI](https://docs.aws.amazon.com/cli/latest/reference/) that runs a web server on port `9000` after running any scripts in the `init` directory to be used by a [wait-for-it](https://github.com/vishnubob/wait-for-it) script.

## Usage

Docker:
``` bash
docker run -v ${pwd}/test:/init -p 9000:9000 -it ghcr.io/leakytap/aws-cli-docker:latest
```

Docker compose:
``` yaml
version: "3.5"
services:
  aws:
    image: ghcr.io/leakytap/aws-cli-docker:latest
    environment:
      AWS_REGION: "us-west-2"
      AWS_ACCESS_KEY_ID: key
      AWS_SECRET_ACCESS_KEY: secret=value
    volumes:
      - ./init:/init
    ports:
      - 9000:9000
```
