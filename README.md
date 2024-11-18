# prometheus_stack
1. Edit `.env` file
2. Create shared network
```shell
docker network create --driver bridge --subnet=192.168.100.0/24 shared-network-dev 
```
3. Start
```shell
doker compose up -d
```