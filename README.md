First create the folder, clone repo and copy files on the local machine.
<ul>
<li> open cmd
<li> cd Documents
<li> mkdir data
<li> cd data
<li> git clone https://github.com/phileas-condemine/hackathon_nov2017.git
<li> copy c:\pricingtraining2017-master\data\osmpois.jar c:\users\formationaxc\documents\data
</ul>

Second step is to create a container on docker from the rocker/rstudio image you already have
<ul>
<li> docker run -d -p 8787:8787 -v ~/Documents/data:/home/rstudio/data --name practice_hackathon rocker/rstudio
<li> Then you will need to install a Java Runtime Environment (JRE) in order to open open Points of Interests (PoI) data
<li> docker exec -it practice_hackathon apt-get  update
<li> docker exec -it practice_hackathon apt-get install -y default-jre


<li> then probably log to http://192.168.99.100:8787 or http://192.168.99.101:8787 user : <b>rstudio</b>, pwd : <b>rstudio</b> depending on the IP used by your docker machine. Check `docker-machine ip`.
</ul>
