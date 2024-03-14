// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.21 <0.9.0;
import { PRBTest } from "@prb/test/PRBTest.sol";
import { ERC6551Registry } from "src/ERC6551Registry.sol";
import { ERC6551Account } from "src/ERC6551Account.sol";

contract Accounr_Test is PRBTest {
    ERC6551Registry public registry;
    ERC6551Account public account;
    function setUp() public virtual {
        registry = new ERC6551Registry();
        account = new ERC6551Account();
    }

    function test_Account_Eq () public {
        bytes32 salt = bytes32(type(uint256).max-1);
        assertEq(registry.createAccount(address(account), salt, block.chainid, address(account), 1),
                registry.account(address(account), salt, block.chainid, address(account), 1));
    }
}

