// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "forge-std/Test.sol";
import "../StakeContract.sol";
import "./mocks/MockERC20.sol";

contract StakeContractTest is Test {
    StakeContract public stakeContract;
    MockERC20 public mockToken;

    function setUp() public {
        stakeContract = new StakeContract();
        mockToken = new MockERC20();
    }

    function testExample(uint8 amount) public {
        mockToken.approve(address(stakeContract), amount);
        bool stakedPassed = stakeContract.stake(amount, address(mockToken));
        assertTrue(stakedPassed);
    }
}
