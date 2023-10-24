/**
 * How to run this test:
 * 1) Comment out line 25 and uncomment line 26
 * 2) Replace `instance contract address` with the Ethernaut instance contract address
 * 3) In Foundry, get a Sepolia RPC URL and save it in an .env file
 * 4) In Foundry, run `source .env`
 * 5) In Foundry, run `forge test --mt test_gateTwo -vvvvv --fork-url $SEPOLIA_RPC_URL`
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../../src/13_GatekeeperOne/GatekeeperOne.sol";
import "../../src/13_GatekeeperOne/GatekeeperOneHack.sol";

error TestFailed();

contract GatekeeperOneHackTest is Test {
    GatekeeperOne public target;
    GatekeeperOneHack public hack;

    function setUp() public {
        target = new GatekeeperOne();
        // target = GatekeeperOne(`instance contract address`);
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
