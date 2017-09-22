tail -n0 -f /var/log/apache2/*.log &
service apache2 start
wait
