# softflowd
Dockerfile to build softflowd

### Usage
    docker run -d --net=host --name softflowd ssugar/softflowd

This uses the --net=host command to have this listen on the host network stack.  It is currently listening for packets on eth0 and sending resultant netflow data to 127.0.0.1:5555/udp
	
### Check stats
    docker exec -t softflowd /bin/sh -c "sudo softflowctl statistics"