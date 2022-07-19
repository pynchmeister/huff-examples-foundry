// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";
import "src/interfaces/IERC20.sol";

// interface IERC20 {
//     function name() external view returns (string);
//     function symbol() external view returns (string);
//     function decimals() external view returns (uint8);
//     function totalSupply() external view returns (uint256);
//     function balanceOf(address account) external view returns (uint256);
//     function transfer(address to, uint256 amount) external returns (bool);
//     function transferFrom(address from, address to, uint256 amount) external returns (bool);    
//     function approve(address spender, uint256 amount) external returns (bool);
//     function allowance(address owner, address spender) external view returns (uint256);

// }

contract ERC20Test is Test {

    // The System under Test: https://en.wikipedia.org/wiki/System_under_test
    IERC20 sut;

    address alice = vm.addr(0x1);
    address bob = vm.addr(0x2);

    function setUpDeployment() public {
        // Deploy a new instance of src/ERC20.huff
        address impl = HuffDeployer.deploy("./src/ERC20");
        sut = IERC20(impl);
        impl = new ERC20("GOKU","GK");
    }


    // function testName() external {
    //     assertEq("GOKU",impl.name());
    // }

//     function testSymbol() external {
//         assertEq("GK", impl.symbol());
//     }

//     function testMint() public {
//         impl.mint(alice, 2e18);
//         assertEq(impl.totalSupply(), impl.balanceOf(alice));
//     }

//     function testBurn() public {
//         impl.mint(alice, 10e18);
//         assertEq(impl.balanceOf(alice),10e18);
        
//         impl.burn(alice, 8e18);

//         assertEq(impl.totalSupply(), 2e18);
//         assertEq(impl.balanceOf(alice),2e18);
//     }

//     function testApprove() public {
//         assertTrue(impl.approve(alice, 1e18));
//         assertEq(impl.allowance(address(this),alice), 1e18);
//     }

//     function testIncreaseAllowance() external {
//         assertEq(impl.allowance(address(this), alice), 0);
//         assertTrue(impl.increaseAllowance(alice , 2e18));
//         assertEq(impl.allowance(address(this), alice), 2e18);
//     }

//     function testDescreaseAllowance() external {
//         testApprove();
//         assertTrue(impl.decreaseAllowance(alice, 0.5e18));
//         assertEq(impl.allowance(address(this), alice), 0.5e18);
//     }

//     function testTransfer() external {
//         testMint();
//         vm.startPrank(alice);
//         impl.transfer(bob, 0.5e18);
//         assertEq(impl.balanceOf(bob), 0.5e18);
//         assertEq(impl.balanceOf(alice), 1.5e18);
//         vm.stopPrank();
//     }

//     function testTransferFrom() external {
//         testMint();
//         vm.prank(alice);
//         impl.approve(address(this), 1e18);
//         assertTrue(impl.transferFrom(alice, bob, 0.7e18));
//         assertEq(impl.allowance(alice, address(this)), 1e18 - 0.7e18);
//         assertEq(impl.balanceOf(alice), 2e18 - 0.7e18);
//         assertEq(impl.balanceOf(bob), 0.7e18);
//     }

//     function testFailMintToZero() external {
//         impl.mint(address(0), 1e18);
//     }

//     function testFailBurnFromZero() external {
//         impl.burn(address(0) , 1e18);
//     }

//     function testFailBurnInsufficientBalance() external {
//         testMint();
//         vm.prank(alice);
//         impl.burn(alice, 3e18);
//     }

//     function testFailApproveToZeroAddress() external {
//         impl.approve(address(0), 1e18);
//     }

//     function testFailApproveFromZeroAddress() external {
//         vm.prank(address(0));
//         impl.approve(alice, 1e18);
//     }

//     function testFailTransferToZeroAddress() external {
//         testMint();
//         vm.prank(alice);
//         impl.transfer(address(0), 1e18);
//     }

//     function testFailTransferFromZeroAddress() external {
//         testBurn();
//         vm.prank(address(0));
//         impl.transfer(alice , 1e18);
//     }

//     function testFailTransferInsufficientBalance() external {
//         testMint();
//         vm.prank(alice);
//         impl.transfer(bob , 3e18);
//     }

//     function testFailTransferFromInsufficientApprove() external {
//         testMint();
//         vm.prank(alice);
//         impl.approve(address(this), 1e18);
//         impl.transferFrom(alice, bob, 2e18);
//     }

//     function testFailTransferFromInsufficientBalance() external {
//         testMint();
//         vm.prank(alice);
//         impl.approve(address(this), type(uint).max);

//         token.transferFrom(alice, bob, 3e18);
//     }

}