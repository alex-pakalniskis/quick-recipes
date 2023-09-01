1. [Install Docker Desktop for Mac](https://docs.docker.com/desktop/install/mac-install/)
2. Open Docker Desktop to start the Docker Engine (you can continue without signing in/creating a Docker Hub account)
3. Open Terminal to enter commands
4. Start an Ubuntu container and open a shell

   ``` bash
   docker run --name=graphnode -it -d ubuntu:jammy-20230804
   docker exec -it graphnode /bin/bash
   ```

5. Start installing dependencies

   ``` bash
   apt update && apt upgrade
   apt install curl
   ```

    [Rust](https://www.rust-lang.org/en-US/install.html)

    ``` bash
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    1
    source "$HOME/.cargo/env"
    ```

   [PostgreSQL](https://www.postgresql.org/download/linux/ubuntu/)

   ``` bash
   apt install lsb-release gnupg
   sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
   wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
   ```
   
   [IPFS](https://docs.ipfs.io/install/), and [Protocol Buffer Compiler](https://grpc.io/docs/protoc-installation/)

7. More coming soon
