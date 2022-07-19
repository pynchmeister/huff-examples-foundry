// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract ERC20Test is Test {
    /// @dev Address of the SimpleStore contract.  
    ERC20 public erc20;

    /// @dev Setup the testing environment.
    function setUp() public {
        erc20 = ERC20(HuffDeployer.deploy("ERC20"));
    }

    /// @dev Ensure that you can set and get the value.
    // function testSetAndGetValue(uint256 value) public {
    //     simpleStore.setValue(value);
    //     console.log(value);
    //     console.log(simpleStore.getValue());
    //     assertEq(value, simpleStore.getValue());
    // }
}

interface SimpleStore {
    function setValue(uint256) external;
    function getValue() external returns (uint256);
}
