for filename in `ls tmp/pids/*.pid`

do
	kill -9 `cat $filename`
	
done

echo "killing any instances of this application running if any"
rm -fr tmp/pids/*.pid

echo "Stopping any httpd service running"
systemctl stop httpd
systemctl stop nginx

