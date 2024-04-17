// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IToken {
    function transfer(address, uint256) external returns (bool);
}

contract TokenHack {
    IToken private immutable target;

    constructor(address _target) {
        target = IToken(_target);
        target.transfer(msg.sender, 1);
    }
}
