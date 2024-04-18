# Shop Solution

1) Deploy `ShopHack`:

```
forge create ShopHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey --constructor-args `ìnstanceAddress`
```

2) Call `attack()`:

```
cast send `shopHackAddress` "attack()" --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
