# udacityML

## 1. Circleci Test
[![CircleCI](https://circleci.com/gh/Leandroamaral/udacityML/tree/master.svg?style=svg)](https://circleci.com/gh/Leandroamaral/udacityML/tree/master)

## 2. Setup Local Environment

### Prerequisites
Install Python

```
apt-get install  python3.7 python3-pip python3-setuptools  python3.7-venv 
```

Clone github master branch

```
git clone https://github.com/Leandroamaral/udacityML.git
```

### Setup Virtual Environment

```
cd udacityML
make setup
source ~/.devops/bin/activate
make install
```

### Run machine learning localy
```
./run_local.sh
```

### Testing (on another terminal)
```
make_prediction.sh 80
```

## 3. Setup Docker Environmnet

### Prerequisites
Install Docker 

```
sudo apt-get install     apt-transport-https     ca-certificates     curl     gnupg-agent     software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
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
