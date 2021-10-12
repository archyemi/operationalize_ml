[![CircleCI](https://circleci.com/gh/archyemi/operationalize_ml/tree/main.svg?style=svg)](https://circleci.com/gh/archyemi/operationalize_ml/tree/main)

## Project Overview

In this project, I had to operationalize a Machine Learning Microservice API that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.. 

In this project I:
* Tested my code using linting
* Created Dockerfile to containerize the application
* Deployed the containerized application using Docker and made a prediction
* Improved the log statements in the source code for this application
* Configured Kubernetes and created a Kubernetes cluster using k3s in Cloud9
* Deployed the containerized application using Kubernetes and made a prediction
* Used CircleCI to orchestrate Continuous Deployment


---

## Running the Python script

1. python3 -m venv ~/.dockerproj
2. source ~/.dockerproj/bin/activate
3. make install

# three ways to run the application
1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


## Description of files

1. .circleci/config.yml: This contains the jobs for CircleCI to run 
2. app.py: This is the Machine learning application that was containerized
3. docker_out.txt: This contains the logs output when the docker container is run locally
4. Dockerfile: This is used to containerize the app.py application
5. kubernetes_out.txt: This contains the logs output when the docker container is run on a kubernetes cluster
6. make_prediction.sh: This is used to make api calls to the application
7. Makefile: This contains instructions on environment setup and lint tests
8. requirements.txt: This contains the dependencies that needs to be installed for the applicationto work
9. run_docker.sh: This contains steps to get the Docker application running locally
10. run_kubernetes.sh: This file gets the Docker application running on kubernetes
11. upload_docker.sh: This file tags and uploads an image to Docker Hub
12. model_data: This contains the data the application uses to make predictions