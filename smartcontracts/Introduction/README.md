##Deploying and Interacting with a Smart Contract




Step 1: Install and run Anvil
Anvil is part of the Foundry toolkit, so you need to install Foundry first.

###1. Install Foundry:

To get started, you need to install Foundry. Open your terminal and run the following commands:

```shell
$ curl -L https://foundry.paradigm.xyz | bash
```



###2. Install Anvil:

Now, install Anvil by running:

```shell
$ foundryup
```


###3. Run Anvil:

Run Anvil to start your local Ethereum node:

```shell
$ anvil
```

You should see output indicating that Anvil is running and providing details such as the RPC endpoint (default is http://127.0.0.1:8545).

Step 2: Connect to the Local Anvil Node in Python Using web3.py
To interact with the local Anvil node, we’ll use web3.py, a Python library for interacting with Ethereum. You can do this in other languages like Rust if you want — Anvil doesn’t care, it’s just going to expose an RPC port for us. Don’t forget to spin up a venv for all of these python packages (python3 -m venv venv && source venv/bin/activate).

Keep the Anvil node from step 1 running, and do all of this in a separate terminal window.

###1. Install web3.py:

First, you need to install web3.py. You can do this using pip:

```shell
$ pip install web3
```

###2. Connect to the Anvil Node:

Next, create a Python script to connect to the Anvil node. `connect_to_anvil.py`

Run the script:

```shell
$ python connect_to_anvil.py
```

If everything is set up correctly, you should see “Connected to Anvil” in your terminal. If it fails, double check that your Anvil node is actually running and logging output.

Step 3: Deploy and Interact with a Simple Smart Contract
###1. Create a Simple Smart Contract:

Create a new file called `SimpleStorage.sol` 


###2. Compile and Deploy the Contract Using Forge:

Open your terminal and navigate to the directory containing `SimpleStorage.sol`. Then, run the following commands:

```shell
$ export ETH_FROM=0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
forge create --rpc-url http://127.0.0.1:8545 --unlocked SimpleStorage.sol:SimpleStorage --constructor-args 0
```



This will deploy the contract to your Anvil node. 

Bravo you have deployed and interacted with your first Simple Smart Contract



## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
