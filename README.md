Ianseo in Docker
=================

Run Ianseo server (http://ianseo.net/) inside a docker container.

Setup
-----
run the setup.sh and  save the mysql admin password as it might come in handy, but you dont have to.

Ctrl + C shuts down the server.

Usage
-----
Start Ianseo server in the Docker container:

	docker start ianseo

Stop Ianseo server in the Docker container:

	docker stop ianseo

Access ianseo via http://localhost. To finish the setup you can use default settings.

phpmyadmin is also available through http://localhost/phpmyadmin
