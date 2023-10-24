# Ethernaut Solutions

This repository contains a collection of smart contracts designed to beat the [Ethernaut](https://ethernaut.openzeppelin.com/) wargame by [OpenZeppelin](https://github.com/OpenZeppelin/ethernaut).

## Requirements

- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git): run `git --version` to check installation
- [Foundry](https://getfoundry.sh/): run `foundry --version` to check installation

## Installation

```
git clone https://github.com/blocktivist/ethernaut
cd ethernaut
forge build
```

## Instructions

After creating a new contract instance on [Ethernaut](https://ethernaut.openzeppelin.com/), run `contract.address` in the website console to get `address _target`.

All contracts can be compiled in [Remix IDE](https://remix.ethereum.org/) and get called or deployed at `address _target`. However, level 25 is an exception to this, see the comments.

Level 13 requires a test conducted in [Foundry](https://getfoundry.sh/).

Note: this repository uses [OpenZeppelin contracts](https://github.com/OpenZeppelin/openzeppelin-contracts) version 4.9.3, so some contracts will not compile in [Remix IDE](https://remix.ethereum.org/) with a newer version. A qick fix is to copy the `lib/openzeppelin-contracts/contracts` folder from this repository into [Remix IDE](https://remix.ethereum.org/).

## Credits

A big shoutout to [@t4sk](https://github.com/t4sk) and their [YouTube series](https://www.youtube.com/playlist?list=PLO5VPQH6OWdWh5ehvlkFX-H3gRObKvSL6) for providing a guide. Check it out for detailed walkthroughs!
