#!/bin/bash

if [ -d "$PWD/MONGODATABASEBACKUP/data" ] && [ -d "$PWD/data" ];
then
	echo "Please choose one Version of data"
else
	if [ -d "$PWD/MONGODATABASEBACKUP" ]
	then
		if [ -d "$PWD/data" ]
		then
			echo "done 1"
			chmod 777 -R data
			mv data MONGODATABASEBACKUP/
			docker-compose up --build
			mv MONGODATABASEBACKUP/data .
			sh mountVol.sh
		elif [ -d "$PWD/MONGODATABASEBACKUP/data" ]
		then
			echo "done 2"
			docker-compose up --build
			chmod 777 -R MONGODATABASEBACKUP/data
			mv MONGODATABASEBACKUP/data .
			sh mountVol.sh
		else
			echo "Please rm -rf MONGODATABASEBACKUP"
		fi
	else
		mkdir MONGODATABASEBACKUP
		if [ -d "$PWD/data" ]
		then
			chmod 777 -R data
			mv data MONGODATABASEBACKUP/
			docker-compose up --build
			mv MONGODATABASEBACKUP/data .
			sh mountVol.sh
		else
			mkdir MONGODATABASEBACKUP/data
			docker-compose up --build
			mv MONGODATABASEBACKUP/data .
			chmod 777 -R data
			sh mountVol.sh
		fi
	fi
fi
