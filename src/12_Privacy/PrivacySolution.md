# Privacy Solution

Retrieve the `key32`:

```
cast storage `ìnstanceAddress` 0x5 --rpc-url $SEPOLIA_RPC_URL
```

Cast the `key32` to `bytes16`:

```
chisel
bytes32 key32 = `key32`
bytes16 key16 = bytes16(key32)
key16
# truncate the last 32 zeros
```

Call the  `unlock()` function:

```
cast send `ìnstanceAddress` "unlock(bytes16)" `key16` --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
