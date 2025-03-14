# prometheus_stack
1. Make `.env` file from example
```shell
cp .env_example .env
```

2. Create shared network
```shell
docker network create --driver bridge --subnet=192.168.100.0/24 shared-network-dev 
```

3. Start
```shell
doker compose up -d
```

4. Stop
```shell
docker compose down
```