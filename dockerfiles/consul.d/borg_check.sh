BORG_HEALTH=$(curl http://consul_host:5013/v1/health 2>/dev/null | grep healthy | wc -l)
FABIO_HEALTH=$(curl http://consul_host:9998/health 2>/dev/null)

if [ "x$BORG_HEALTH" == "x1" ] && [ "x$FABIO_HEALTH" == "xOK" ];then
        exit 0
else
        exit 1
fi
