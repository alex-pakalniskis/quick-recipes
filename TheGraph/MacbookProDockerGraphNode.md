# Graph Node on a Macbook Pro with M2 Pro chip
## Instructions
1. [Install Docker Desktop for Mac](https://docs.docker.com/desktop/install/mac-install/)
1. Open Docker Desktop to start the Docker Engine (you can continue without signing in/creating a Docker Hub account)
1. Install `ganache-cli` and test the installation
   ``` bash
   npm install ganache --global
   # might need to do `sudo !!` because of permissions
   ```
1. Start a test blockchain JSON-RPC endpoint
   ``` bash
   ganache
   ```
1. Open a new terminal tab
1. Open Terminal then enter the following commands 
    ``` bash
    git clone https://github.com/graphprotocol/graph-node.git
    cd graph-node/docker
    nano docker-compose.yml
    docker compose up
    ```
1. Start IPFS, PostgreSQL, and Graph Node in Docker
    ``` bash
    docker-compose up
    ```
    
## Resources
* https://docs.docker.com/desktop/install/mac-install/
* https://github.com/graphprotocol/graph-node/blob/master/docker/README.md
