# udacityML
>This git have a Udacity Project (Operacionalize a Machine Learning API) 
>With this project we can run a House Price Prediction in 3 ways
>
>1. Localy
>2. On Docker
>3. On kubernate
>
>This was build on Ubuntu Desktop LTS

## Circleci Test
[![CircleCI](https://circleci.com/gh/Leandroamaral/udacityML/tree/master.svg?style=svg)](https://circleci.com/gh/Leandroamaral/udacityML/tree/master)

## 1. Run on Local Environment

### Prerequisites
Install Python

```
python3.7 
python3-pip 
python3-setuptools  
python3.7-venv
make
```

Clone github master branch

```
https://github.com/Leandroamaral/udacityML.git
```

### Setup Virtual Environment

```
cd udacityML
make setup
source ~/.devops/bin/activate
make install
```

### Run machine learning API
```
./run_local.sh
```

### Testing (on another terminal)
```
make_prediction.sh 80
```

## 2. Run on Docker Environmnet

### Prerequisites
Install Docker 

```
docker-ce 
docker-ce-cli 
containerd.io
```

Test docker installation
```
docker run hello-world
```

### Run machine learning on Docker
```
./run_docker.sh
```

### Testing (on another terminal)
```
make_prediction.sh
```

## 3 Run on Kubernates Environmnet

### Prerequisites
Install Kubernates

```
VirtualBox-6.0
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
minikube start
```

### Run machine learning on Kubernates
```
./run_docker.sh
```

### Testing (on another terminal)
```
make_prediction.sh
```

# Files Description

.circleci -> circleci yml file configuration

model_data -> predictive model

Dockerfile -> Configuration file to create a docker image

Makefile -> Configuraton file to install local environment using make

app.py -> Python file that run the machine learning API

docker_out.txt -> Log file from docker prediction

kubernate_out.txt -> Log file from kubernate prediction

make_prediction.sh -> make the prediciton

requiriments.txt -> list of packages needed to run the machine learning API.

run_docker.sh -> install and execute docker environment

run_kubernates.sh -> install and execute kubernates environment

run_local.sh -> execute localy enviroment

upload_docker.sh -> Push the docker image to docker HUB
