docker run -p 80:8000 -v $HOME/App-Dockerized-PROD/data/lib/:/var/lib/mongodb -v $HOME/App-Dockerized-PROD/data/log:/var/log/mongodb -it appdockerizedprod_nodejs:latest /bin/bash
