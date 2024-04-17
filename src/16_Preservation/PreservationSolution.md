# Preservation Solution

Deploy `PreservationHack`:

```
forge create PreservationHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```

Call the `attack()` function:

```
cast send `preservationHackAddress` "attack(address)" `ìnstanceAddress` --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
