first create a container on docker from the rocker/rstudio image you already have
<ul>
<li> docker run -d -p 8787:8787 -v ~/Documents/data:/home/rstudio/data --name practice_hackathon rocker/rstudio
<li> some apt-get ? depends on the needed packages...
</ul>
