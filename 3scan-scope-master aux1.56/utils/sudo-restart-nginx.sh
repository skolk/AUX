sudo pkill nginx
sleep 2
sudo service nginx restart

echo "To see log:"
echo "tail -f /usr/local/nginx/logs/error.log"
