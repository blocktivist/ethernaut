# Shop Solution

Deploy `ShopHack`:

```
forge create ShopHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey --constructor-args `ìnstanceAddress`
```

Call the `attack()` function:

```
cast send `shopHackAddress` "attack()" --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
