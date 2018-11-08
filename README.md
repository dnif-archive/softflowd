# softflowd
Dockerfile to build softflowd

### Usage
    docker run -e "IFACE=eth0" -e "TIP=192.168.28.4" -e "TPORT=5555" -it -d --net=host --name sflowd dnif/softflowd

This uses the --net=host command to have this listen on the host network stack.  It is currently listening for packets on eth0 and sending resultant netflow data to 192.168.25.4:5555/udp
	
### Check stats
    docker exec -t sflowd /bin/sh -c "sudo softflowctl statistics"