perm:
	sudo chown ${USER}:${USER} ./project/resources -R
	sudo chmod 777 ./project/resources -R
	sudo chgrp -R www-data ./project/bootstrap/cache
	sudo chmod -R ug+rwx ./project/bootstrap/cache
	sudo chown ${USER}:${USER} ./project/storage -R
	sudo chgrp -R www-data ./project/storage
	sudo chmod -R ug+rwx ./project/storage
	