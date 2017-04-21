Dockerized owncloud with ocDownloader
========
[![Build Status](https://travis-ci.org/AlDemion/owncloud-ocdownloader.svg?branch=master)](https://travis-ci.org/AlDemion/owncloud-ocdownloader)

Info about project - https://hub.docker.com/r/library/owncloud/

##Main differences from original image
This image based on the latest stable owncloud image with minor changes to enable ocDownloader plugin 

###Usage
1. Install docker https://docs.docker.com/engine/installation/linux/
2. Run container from `aldemion/owncloud-ocdownloader` image

		sudo docker run -d --name owncloud --restart=always -p 8080:80 -v path_to_config_folder:/var/www/html/config -v path_to_apps_folder:/var/www/html/apps aldemion/owncloud-ocdownloader

	* you can change server port from `8080` to your preferred port
	* you need to change volume location to config and apps folders. As a result you could use persistent data between another containers

3. Open browser on page [http://localhost:8080](http://localhost:8080)
4. Enjoy
