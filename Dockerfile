
# install pandoc like this
FROM ubuntu
RUN apt-get update
RUN apt-get install -y pandoc

RUN rm /usr/local/lib/rstudio/bin/pandoc/pandoc
RUN ln -s /usr/local/bin/pandoc /usr/local/lib/rstudio/bin/pandoc/pandoc

RUN rm /usr/local/lib/rstudio/bin/pandoc/pandoc-citeproc
RUN ln -s /usr/local/bin/pandoc-citeproc /usr/local/lib/rstudio/bin/pandoc/pandoc-citeproc

# install R packages like this
# put as close to top of script as possible to make best 
# use of caching and speed up builds
FROM rocker/rstudio
RUN Rscript -e "install.packages('rmarkdown')"
RUN Rscript -e "install.packages('ggplot2')"
RUN Rscript -e "install.packages('here')"
RUN Rscript -e "install.packages('dplyr')"


# make a project directory in the container
# we will mount our local project directory to this directory
RUN mkdir /project

# copy contents of local folder to project folder in container
COPY ./ /project/

# make R scripts executable
RUN chmod +x /project/R/*

WORKDIR /project

# make container entry point bash
CMD make report