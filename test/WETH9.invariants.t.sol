pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
// import {InvariantTest} from "forge-std/InvariantTest.sol";
import {WETH9} from "../src/WETH9.sol";

contract WETH9Invariants is Test {
    WETH9 public weth;

    function setUp() public {
        weth = new WETH9();
    }

    function invariant_wethSupplyIsAlwaysZero() public {
        assertEq(0, weth.totalSupply());
    }

    // function invariant_badInvariantThisShouldFail() public {
    //     assertEq(1, weth.totalSupply());
    // }
}