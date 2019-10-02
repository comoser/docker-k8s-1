# AWS Deploys with Docker

This repo has the code to deploy a single container app to [AWS Beanstalk](https://aws.amazon.com/elasticbeanstalk/) service, which in turn provides us with a few perks out of the box:

- Auto association with S3
- Auto Load Balancer
- Auto Scaling
- Use of ECS cluster

# App's purpose

This is a default create-react-app template code, since the purpose of this repo is to provide guidance on the devops part of it.

# Development

For development purposes, you can use docker-compose which will create the environment needed to test the app locally, with all services already configured.

# Production

## AWS Configuration

In the AWS part there are some configurations needed that this repo doesn't provide. Namely:

- Creation of a new Elastic Beanstalk app with Docker Single-Container settings defined
- The S3 bucket is configured automatically when you create the EB app, and will host the project contents for AWS to deploy
- Create new user under IAM AWS service to use in TravisCI to later deploy to AWS

These kinds of configurations can later on be set on something like [Terraform](https://www.terraform.io/).

## TravisCI

This repo uses Travis as a CI and the [.travis.yml](./.travis.yml) script is responsible for:

- Testing the app
- Building the docker images
- Pushing the docker images to [Docker Hub](https://hub.docker.com)
- Request deploy from AWS Elastic Beanstalk service

# License

[MIT](./LICENSE)