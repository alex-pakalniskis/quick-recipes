# Graph Node on a Macbook Pro with M2 Pro chip
## Instructions
1. [Install Docker Desktop for Mac](https://docs.docker.com/desktop/install/mac-install/)
2. Open Docker Desktop to start the Docker Engine (you can continue without signing in/creating a Docker Hub account)
3. Open Terminal then enter the following commands to install `graph-node` to test the installation
    ``` bash
    docker pull graphprotocol/graph-node
    docker run -it graphprotocol/graph-node:latest /bin/bash
    graph-node -h
    exit
    ```

5. Configure `graph-node` with a blockchain JSON-RPC endpoint
    ``` bash
    coming soon
    ```
    
## Resources
* https://docs.docker.com/desktop/install/mac-install/
* https://github.com/graphprotocol/graph-node/blob/master/docker/README.md
