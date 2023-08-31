1. [Install Docker Desktop for Mac](https://docs.docker.com/desktop/install/mac-install/)https://docs.docker.com/desktop/install/mac-install/
2. Start an Ubuntu container and open a shell

   ``` bash
   docker run --name=ubuntu2204 -it -d ubuntu:jammy-20230804
   docker exec -it ubuntu2204 /bin/bash
   ```

3. Start installing dependencies

    [Rust](https://www.rust-lang.org/en-US/install.html), [PostgreSQL](https://www.postgresql.org/download/), [IPFS](https://docs.ipfs.io/install/), and [Protocol Buffer Compiler](https://grpc.io/docs/protoc-installation/)

4. More coming soon
