/**
 * How to beat this level:
 * 1) In the Ethernaut website console, run `await web3.eth.getStorageAt(contract.address, 1)`
 * 2) Call unlock() with the password from the console
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Vault {
    bool public locked;
    bytes32 private password;

    constructor(bytes32 _password) {
        locked = true;
        password = _password;
    }

    function unlock(bytes32 _password) public {
        if (password == _password) {
            locked = false;
        }
    }
}
