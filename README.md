# aws-cloud-automation-meetup-cicd

## live demo

https://www.youtube.com/watch?v=MAhucSzRq8o

[![youtube link to recorded live demo](https://img.youtube.com/vi/MAhucSzRq8o/0.jpg)](https://www.youtube.com/watch?v=MAhucSzRq8o)

## use case

A highly available front-end web application & API with CI/CD build system capable of continuous delivery and Slack/Email build notifications. 

## high level architecture

* web application code repo: https://github.com/michel-lacle/aws-cloud-automation-meetup-cicd-application-code
* cicd pipeline
* webserver
* vpc
* notification

![logo](docs/cicd-architecture.png)


## code pipeline architecture

![logo](docs/cicd-pipeline-architecture.png)

## development tech stack

* IDE: PyCharm with Terraform Extensions(without this you will suffer)
* Terraform.IO Cloud for automated Terraform Planning & Apply
* Github for storing the terraform code

## web application tech stack
* Two AWS EC2 for the webserver(loadbalancer)
* AWS CodeCommit to store the web application code
* AWS Codepipeline, CodeBuild, & CodeDeploy for the CI/CD system

