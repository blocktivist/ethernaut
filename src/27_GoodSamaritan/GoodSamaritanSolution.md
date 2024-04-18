# GoodSamaritan Solution

1) Deploy `GoodSamaritanHack`:

```
forge create GoodSamaritanHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey --constructor-args `ìnstanceAddress`
```

2) Call `attack()`:

```
cast send `goodSamaritanHackAddress` "attack()" --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
