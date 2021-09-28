# shell-network-tools
![main](https://github.com/v-kamerdinerov/shell-network-tools/workflows/Default/badge.svg)

Multitool for container network troubleshooting with web terminal.
Based on [Praqma/Network-MultiToo](https://github.com/Praqma/Network-MultiTool) and [ttyd](https://github.com/tsl0922/ttyd).

Contains web terminal (**ttyd**) and a lots of tools for container/network testing and troubleshooting. The main docker image is based on Alpine Linux.



## Downloadable from Docker Hub: 
* [https://hub.docker.com/r/vladkmrdnv/shell-network-tools](https://hub.docker.com/r/vladkmrdnv/shell-network-tools)  (Automated Build)




### Tools included:
* apk package manager
* wget, curl, iperf3
* dig, nslookup
* ip, ifconfig, ethtool, mii-tool, route
* ping, nmap, arp, arping
* awk, sed, grep, cut, diff, wc, find, vi editor
* ps, netstat, ss
* gzip, cpio, tar
* tcpdump, wireshark, tshark
* telnet client, ssh client, ftp client, rsync, scp
* traceroute, tracepath, mtr
* netcat (nc), socat
* ApacheBench (ab)
* mysql & postgresql client
* jq
* git
* `/bin/bash` shell interpreter
* ttyd web terminal (port 80)

**Size:** 63 MB compressed

### Docker:
```
$ docker run  -d -p 80:80 vladkmrdnv/shell-network-tools
```

## How to use this image on **host network** ?

### Docker:
```
$ docker run --network host -d vladkmrdnv/shell-network-tools
```
