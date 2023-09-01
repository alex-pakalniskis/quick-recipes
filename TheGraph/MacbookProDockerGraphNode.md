1. [Install Docker Desktop for Mac](https://docs.docker.com/desktop/install/mac-install/)
2. Open Docker Desktop to start the Docker Engine
3. Start an Ubuntu container and open a shell

   ``` bash
   docker run --name=graphnode -it -d ubuntu:jammy-20230804
   docker exec -it graphnode /bin/bash
   ```

4. Start installing dependencies

    [Rust](https://www.rust-lang.org/en-US/install.html), [PostgreSQL](https://www.postgresql.org/download/), [IPFS](https://docs.ipfs.io/install/), and [Protocol Buffer Compiler](https://grpc.io/docs/protoc-installation/)

5. More coming soon
