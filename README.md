# afraid-refresh-docker
afraid-refresh-docker

```
afraidrefresh:
    container_name: afraid_refresh
    build: https://github.com/Ericmas001/afraid-refresh-docker.git
    restart: always
    environment:
      - TZ=America/Montreal
      - AFRAID_API_KEY={TYPE YOUR KEY HERE}
```