# Udacity Cloud DevOps Engineer Nanodegree Program - Capstone

This project applies the skills and knowledge which were developed throughout the Cloud DevOps Engineer Nanodegree program. These include:

* Working in AWS
* Using Jenkins to implement Continuous Integration and Continuous Deployment
* Building pipelines
* Working with CloudFormation to deploy clusters
* Building Kubernetes clusters
* Building Docker containers in pipelines

It develops a CI/CD pipeline for a micro services application (simple website with nginx) with rolling deployment. It also contains Continuous Integration steps. Continuous Deployment includes:

* Pushing the built Docker container to the Docker Hub repository
* Deploying the Docker container to a small Kubernetes cluster on AWS EKS

## Setup Jenkins and Blue Ocean

[Setup a Jenkins build server](https://aws.amazon.com/getting-started/hands-on/setup-jenkins-build-server/) and install the [Blue Oceans plugin](https://www.jenkins.io/doc/book/blueocean/getting-started/).

Open Blue Ocean and create a new pipeline:

![Create new pipeline](screenshots/blue-ocean-pipelines.png)

Select GitHub:

![Select GitHub](screenshots/blue-ocean-create-pipeline-01.png)

Select the correct repository:

![Select repository](screenshots/blue-ocean-create-pipeline-02.png)

Update the scan repository triggers in the pipeline settings to periodically scan every minute:

![Scan repository triggers](screenshots/jenkins-scan-repository-triggers.png)

Add Docker Hub credentials:

![Docker Hub credentials](screenshots/jenkins-docker-hub-credentials.png)

## Requirements

Graded according to the [Project Rubric](https://review.udacity.com/#!/rubrics/2577/view).

## License

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
- Copyright 2020 © [Thomas Weibel](https://github.com/thom).