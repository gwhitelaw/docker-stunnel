#docker-stunnel

##Setup

* Mount a local volume containing your stunnel config (stunnel.conf) and your
  SSL certificate (stunnel.pem) to the volume /etc/stunnel

##Run

```
docker run -d --name stunnel --volume=/path/to/conf:/etc/stunnel/ -p 443:443 digit/docker-stunnel
```
