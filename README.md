# Environment Setup

This Docker Compose configuration sets up a comprehensive development environment with the following components:

- PostgreSQL server with a pre-configured database
- Consul server for service discovery
- Vault server with auto-generated unseal keys and tokens
- Minio server with a ready-to-use bucket
- Custom Spring Boot API Gateway for future services

## Prerequisites

- Docker installed on your machine
- Docker Compose installed on your machine

## Getting Started

1. Clone the repository:

    ```bash
    git clone https://github.com/SalaheddineS/Compose-Automated-Multi-Service-Devenv.git
    cd Compose-Automated-Multi-Service-Devenv
    ```

2. Add execute permission to setup scripts:

    ```bash
    chmod +x setup_minio.sh
    chmod +x scafoldingscript.sh
    ```

3. Run Docker Compose:

    ```bash
    docker-compose up -d
    ```

This will start all the required services in detached mode.

## Access Information

### PostgreSQL

- URL: `localhost:5432`
- Username: `postgres`
- Password: `postgres`
- Database: `smarthiredb`

### Consul

- API URL: `localhost:8500`

### Vault

- API URL: `localhost:8200`
- Unseal Key and Token: (Auto-generated, check `credentials.txt`)

### Minio

- API URL: `127.0.0.1:9000`
- Access Key: `123456789`
- Secret Key: `123456789`
- Bucket Name: `smarthirebucket`

### API Gateway

- URL: `localhost:9999`

## Additional Notes

- The unseal keys and tokens for Vault are stored in the `credentials.txt` file.
- The Minio server comes with a pre-configured bucket named `smarthirebucket`.

Feel free to start developing your application using this automated stack development environment!

