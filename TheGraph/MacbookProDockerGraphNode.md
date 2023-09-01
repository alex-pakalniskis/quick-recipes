1. [Install Docker Desktop for Mac](https://docs.docker.com/desktop/install/mac-install/)
2. Open Docker Desktop to start the Docker Engine (you can continue without signing in/creating a Docker Hub account)
3. Open Terminal to enter commands
4. Start an Ubuntu container and open a shell

   ``` bash
   docker run --name=graphnode -it -d ubuntu:jammy-20230804
   docker exec -it graphnode /bin/bash
   ```

5. Start installing dependencies

    [Rust](https://www.rust-lang.org/en-US/install.html), [PostgreSQL](https://www.postgresql.org/download/), [IPFS](https://docs.ipfs.io/install/), and [Protocol Buffer Compiler](https://grpc.io/docs/protoc-installation/)

6. More coming soon
