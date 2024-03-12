// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Token} from "../src/Token.sol";

contract CounterTest is Test {
    Token public token;

    function setUp() public {
        token = new Token();
        token.setNumber(0);
    }

    function test_Increment() public {
        token.increment();
        assertEq(token.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        token.setNumber(x);
        assertEq(token.number(), x);
    }
}
