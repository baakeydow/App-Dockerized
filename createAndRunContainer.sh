mv data ../MONGODATABASEBACKUP/
docker-compose up --build
mv ../MONGODATABASEBACKUP/data .
sudo chmod 777 -R data
sh mountVol.sh
