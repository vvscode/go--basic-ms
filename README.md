# Simple Go HTTP Service and Docker Image Example

This repository contains a minimal Go HTTP service and Docker image that meet the following requirements:

- Listens on port 8000.
- Supports an HTTP method:
  - GET /health/
    - RESPONSE: `{"status": "OK"}`

## Docker Image

You can find the Docker image for this project on Docker Hub at the following location:

[![Docker Hub](https://img.shields.io/badge/Docker%20Hub-Go%20Basic%20MS-blue)](https://hub.docker.com/repository/docker/vvscode/go-basic-ms)

## Usage

### Build and Run Locally

1. Clone this repository:
   ```bash
   git clone https://github.com/vvscode/go--basic-ms.git

1. Navigate to the project directory:
   ```bash
   cd go--basic-ms

1. Build the Docker image for this project using the following command:
   ```bash
   docker build --platform linux/amd64 -t vvscode/go-basic-ms:latest .
    ```
    (Note: The `--platform linux/amd64` flag is used to specify the target platform as AMD64, which is recommended for cross-architecture compatibility.)

1. Run the Docker container:

   ```bash
   docker run -p 8000:8000 vvscode/go-basic-ms:latest

1. Access the health check endpoint in your browser or with a tool like curl:
   ```bash
   curl http://localhost:8000/health/


## Links

[GitHub Repository](https://github.com/vvscode/go--basic-ms)

[Docker Hub Repository](https://hub.docker.com/repository/docker/vvscode/go-basic-ms)
