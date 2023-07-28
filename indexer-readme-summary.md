[This](https://github.com/graphprotocol/indexer/) is a set of tools and components related to the "Graph Protocol," a system that allows developers to efficiently access and retrieve data from different blockchains. Here's a simple explanation for each part:

**Indexer Service**:
    
* Handles all required external communications with the network. Shares cost models and indexing statuses, passes query requests from gateways on to a Graph Node, and manages the query payments via state channels with the gateway.
* The only component that needs to be exposed externally, the service passes on subgraph queries to the graph node, manages state channels for query payments, shares important decision making information to clients like the gateways.

**Indexer Agent**
    
* Facilitates the Indexers interactions on chain including registering on the network, managing subgraph deployments to its Graph Node/s, and managing allocations.
* The agent monitors the network and the Indexer's own infrastructure and manages which subgraph deployments are indexed and allocated towards on chain and how much is allocated towards each.

**Indexer CLI**
    
* This is a simple command-line tool that lets developers interact with the Indexer Service and Indexer Agent. It allows them to perform various tasks, like managing configurations, creating allocations, and checking the status of the indexer.
* The command line interface for managing the Indexer agent. It allows Indexers to manage cost models, manual allocations, actions queue, and indexing rules.

> Note: The Indexer agent and Indexer service should be co-located with your Graph Node infrastructure. Remember to stake in the protocol before starting up your Indexer components!
