// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {GatekeeperTwo} from "./GatekeeperTwo.sol";

error EnterFailed();

contract GatekeeperTwoHack {
    GatekeeperTwo private immutable target;

    constructor(address _target) {
        target = GatekeeperTwo(_target);
        uint64 key64 = uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ type(uint64).max;
        bytes8 key = bytes8(key64);
        if (!target.enter(key)) revert EnterFailed();
    }
}
