// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test, console} from "forge-std/Test.sol";
import {GatekeeperOne} from "../src/13_GatekeeperOne/GatekeeperOne.sol";
import {GatekeeperOneHack} from "../src/13_GatekeeperOne/GatekeeperOneHack.sol";

error TestFailed();

contract GatekeeperOneHackTest is Test {
    GatekeeperOne public target;
    GatekeeperOneHack public hack;

    function setUp() public {
        target = new GatekeeperOne();
        // target = GatekeeperOne(`instanceAddress`);
        hack = new GatekeeperOneHack();
    }

    function test_gateTwo() public {
        for (uint256 i = 100; i < 8191; i++) {
            try hack.attack(address(target), i) {
                console.log("_gas", i);
                return;
            } catch {}
        }
        revert TestFailed();
    }
}
