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
* Used CircleCI to orchestrate CD


---

## Running the Python script

python3 -m venv ~/.dockerproj
source ~/.dockerproj/bin/activate
make install
# threee ways to run the application
1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


##Description of files

.circleci/config.yml: This contains the jobs for CircleCI to run 
app.py: This is the Machine learning application that was containerized
docker_out.txt: This contains the logs output when the docker container is run locally
Dockerfile: This is used to containerize the app.py application
kubernetes_out.txt: This contains the logs output when the docker container is run on a kubernetes cluster
make_prediction.sh: This is used to make api calls to the application
Makefile: This contains instructions on environment setup and lint tests
requirements.txt: This contains the dependencies that needs to be installed for the applicationto work
run_docker.sh: This contains steps to get the Docker application running locally
run_kubernetes.sh: This file gets the Docker application running on kubernetes
upload_docker.sh: This file tags and uploads an image to Docker Hub
model_data: This contains the data the application uses to make predictions