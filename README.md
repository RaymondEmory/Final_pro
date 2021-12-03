# INFO550 Final Project

## My project

This project aims to look into the long term impact of COVID-19 on China's regional air quality through health perspectives. The data in this directory has already been pre-processed (missing data cleaning, grouping by variables) The Rmd document here deals with summarizing pre-liminary results and plotting figures for eventual visualiztion purposes. 

## Pull the docker image from my DockerHub:  
docker pull raymondc25/project

## Run the project: 
docker run -it raymondc25/project

## Retrieve from the container and build the report in your local directory: 
mkdir ~/docker_output/

docker run -v ~/docker_output:/project/output project
