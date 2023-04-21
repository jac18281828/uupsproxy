// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import {CountFly} from "../src/Counter.sol";
import {createFly, CountProxy} from "../src/CounterProxy.sol";

contract CounterTest is Test {
    CountFly public count;

    function setUp() public {
        count = createFly(1);
    }

    function testGet() public {
        assertEq(count.number(), 1);
        assertEq(count.get(), 1);
    }

    function testUpgrade() public {
        CountProxy _proxy = CountProxy(payable(address(count)));
        _proxy.upgrade(17);
        assertEq(count.number(), 17);
        assertEq(count.get(), 17);
    }
}
