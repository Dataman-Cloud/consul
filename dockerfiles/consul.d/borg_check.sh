BORG_HEALTH=$(curl http://consul_host:5013/v1/health  | grep healthy | wc -l)
FABIO_HEALTH=$(curl http://consul_host:9998/health)

if [ $BORG_HEALTH -eq 1 ] && [ $FABIO_HEALTH = "OK" ];then
        exit 0
else
        exit 1
fi
