function zapp()
{
	WORKSPACE=/Users/zhangshenjia/Cloud/works
	ZAPP=/Users/zhangshenjia/Cloud/works/github/zApp

	# clone from zapp
	git clone --recursive $ZAPP $WORKSPACE/$1

	# init new repo
	cd $WORKSPACE/$1
	rm -rf .git
	ginit
	chmod a+w $WORKSPACE/$1/code/frontend/runtime
	chmod a+w $WORKSPACE/$1/code/backend/runtime
	chmod a+w $WORKSPACE/$1/code/console/runtime

	# create host
	echo "127.0.0.1   $1 backend.$1" > /tmp/hosts
	echo "`cat /etc/hosts`" >> /tmp/hosts
	sudo mv /tmp/hosts /etc/hosts

	# create site
	sed "s/appname/$1/" /opt/local/etc/nginx/servers/app.example > /opt/local/etc/nginx/servers/$1.conf
	sudo nginx -s reload
}

function newapp()
{
	WORKSPACE=/Users/zhangshenjia/Cloud/works

	# clone from zapp
	mkdir -p $WORKSPACE/$1/code

	# init new repo
	cd $WORKSPACE/$1
	ginit

	# create host
	echo "127.0.0.1   $1" > /tmp/hosts
	echo "`cat /etc/hosts`" >> /tmp/hosts
	sudo mv /tmp/hosts /etc/hosts

	# create site
	sed "s/appname/$1/" /opt/local/etc/nginx/servers/server.example > /opt/local/etc/nginx/servers/$1.conf
	sudo nginx -s reload
}

function delapp()
{
	# remove host
	sudo cp /etc/hosts /tmp/hosts.bak
	sed "/$1/d" /tmp/hosts.bak > /etc/hosts

	# remove site
	rm /opt/local/etc/nginx/servers/$1.conf
	sudo nginx -s reload	
}
