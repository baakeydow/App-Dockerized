mv ./data ../MONGODATABASEBACKUP/
docker-compose up --build
mv ../MONGODATABASEBACKUP/data .
