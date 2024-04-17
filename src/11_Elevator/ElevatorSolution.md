# Elevator Solution

Deploy `ElevatorHack`:

```
forge create ElevatorHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey --constructor-args `ìnstanceAddress`
```

Call the `attack()` function:

```
cast send `elevatorHackAddress` "attack()" --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
