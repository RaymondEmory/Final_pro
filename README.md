# INFO550 Final Project

## My project

This project aims to look into the long term impact of COVID-19 on China's regional air quality through health perspectives. The data in this directory has already been pre-processed (missing data cleaning, grouping by variables) The Rmd document here deals with summarizing pre-liminary results and plotting figures for eventual visualiztion purposes. 

# Pull the docker image from my DockerHub:  
docker pull raymondc25/project

# Run the project: 
docker run -it raymondc25/project

# Retrieve from the container and build the report in your local directory: 
# For example: 
mkdir ~/docker_output/
docker run -v ~/docker_output:/project/output project

# Then you can find the report.html in the directory that you created on your local computer, 
# OR you can decide any directory you want to assign on by running "docker run -v /filepath:/project/output ex-proj" alone. 
