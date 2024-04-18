# GoodSamaritan Solution

Deploy `GoodSamaritanHack`:

```
forge create GoodSamaritanHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey --constructor-args `ìnstanceAddress`
```

Call the `attack()` function:

```
cast send `goodSamaritanHackAddress` "attack()" --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
