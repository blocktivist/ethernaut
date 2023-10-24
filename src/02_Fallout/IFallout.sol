/**
 * How to beat this level:
 * 1) Call Fal1out()
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IFallout {
    function owner() external view returns (address);
    function Fal1out() external payable;
}
