# Dockerized Tools

This project provides a Docker Compose setup for several useful tools.

## How to Use

1. Make sure you have Docker and Docker Compose installed on your system. [Docker installation](https://docs.docker.com/engine/install/)
2. Clone this repository.
3. Customize the environment variables in the `.env` file, if needed.
4. make the script executable by changing the access permission of ./my-tools.sh `chmod 754 ./my-tools.sh`
4. Run a tool:
```
  # Start the portainer service (example)
  ./docker-service.sh start portainer
```

5. Stop a tool: 
```
  # Stop the portainer service (example)
  ./docker-service.sh stop portainer
```

## Included Services

### 1. Mailpit

- **Description:** Mail server with a web interface for email management.
- **Image:** axllent/mailpit
- **Documentation:** [Mailpit GitHub](https://github.com/axllent/mailpit)
- **Ports:** 
  - SMTP: `${MAILPIT_PORT}`
  - Web Interface: `${MAILPIT_WEB_PORT}`

### 2. CloudBeaver

- **Description:** Web-based database administration tool.
- **Image:** dbeaver/cloudbeaver
- **Documentation:** [CloudBeaver Docker Container](https://github.com/dbeaver/cloudbeaver/wiki/Run-Docker-Container)
- **Ports:** 
  - Web Interface: `${CLOUDBEAVER_PORT}`

### 3. Portainer

- **Description:** Docker container management tool.
- **Image:** portainer/portainer-ce
- **Documentation:** [Portainer CE](https://docs.portainer.io/start/install-ce/server/docker/linux)
- **Ports:** 
  - HTTPS: `${PORTAINER_PORT}`
  - Web Interface: `${PORTAINER_WEB_PORT}`

### 4. RedisInsight

- **Description:** GUI for managing and monitoring Redis databases.
- **Image:** redislabs/redisinsight
- **Documentation:** [RedisInsight Docker Installation](https://docs.redis.com/latest/ri/installing/install-docker/)
- **Ports:** 
  - Web Interface: `${REDISINSIGHT_PORT}`

## Notes

- Services using `network_mode: 'host'` directly use host ports. Modify configurations of these services themselves to change ports.
- Persistent data for CloudBeaver, Portainer, and RedisInsight is stored in volumes.

Feel free to contribute, report issues, or provide feedback!
