first create a container on docker from the rocker/rstudio image you already have
<ul>
<li> docker run -d -p 8787:8787 -v ~/Documents/data:/home/rstudio/data --name practice_hackathon rocker/rstudio
<li> some apt-get ? depends on the needed packages...
<li> then probably log to http://192.168.99.100:8787 or http://192.168.99.101:8787 user : <b>rstudio</b>, pwd : <b>rstudio</b> depending on the IP used by your docker machine. Check `docker-machine ip`.
</ul>
