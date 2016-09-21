HEALTH=$(echo ruok | curl -s telnet://consul_host:2181)
if [ $HEALTH = "imok" ];then
        exit 0
else
        exit 1
fi
