# Sefaria-Docker
These scripts create three containers tied together with docker-compose.  One is a vanilla Redis install, one is a mongo install built with the latest Sefaria data, and the third is a Python/Django/Node server running the latest Sefaria web code.  

The `./build` script will fetch the latest data and built the containers.
The `./run` script will bring up the containers and provision the local Sefaria web client on `0.0.0.0:8000`.  


# Quick Start
* Install Docker.
  * On Mac, this works well - https://store.docker.com/editions/community/docker-ce-desktop-mac
* Clone this repo. 
* `./build`.
* `./run`.
* Browse to `http://0.0.0.0:8000` / `localhost:8000`.
* To check the containers status and ports type  - `docker ps`.

# API
* To fetch data from the Sefaria API browse `localhost:8000/api/`.
* An example `localhost:8000/api/texts/Berakhot.2a?commentary=1` 
will get you the text and all the commentary of "Berakhot" book, page 2, sub-page "b".
* For more examples see `sefaria api.postman_collection.json`. 

# Upload Images to AWS ECR
* Run:
  ```bash
  ./aws_push.sh
  ``` 

# Run Containers in AWS EC2
* Copy `docker-compose.cloud.yml` to the EC2 machine.
* Run in EC2 machine:
  ```bash
  docker.compose -f docker-compose.cloud.yml up -d
  ``` 