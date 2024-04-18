# Ethernaut Solutions

This repository contains the smart contracts designed to beat the [Ethernaut](https://ethernaut.openzeppelin.com/) CTF challenges by [OpenZeppelin](https://www.openzeppelin.com/).

## Requirements

- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git): run `git --version` to check the existing installation
- [Foundry](https://getfoundry.sh/): run `forge --version` to check the existing installation

## Setup

To clone the repository and install the dependencies, run:

```
git clone https://github.com/blocktivist/ethernaut
cd ethernaut
forge install
forge build
```

## Instructions

To add a Sepolia RPC URL, run:

```
cp .env.example .env
# add Sepolia RPC URL
source .env
```

To add a private key, run:

```
cast wallet import sepoliaKey --interactive
```

For each challenge, deploy a new instance through the browser using the `sepoliaKey`.

To fetch the `instanceAddress` from the console, run:

```
contract.address
```

Follow the instructions in the `Solution.md` file. Finally, submit the instance through the browser to solve the challenge.

## Credits

Credits go to [@t4sk](https://github.com/t4sk) and their [YouTube series](https://www.youtube.com/playlist?list=PLO5VPQH6OWdWh5ehvlkFX-H3gRObKvSL6) for providing a guide on how to solve the challenges. Follow them on
[Twitter](https://twitter.com/ProgrammerSmart)!
