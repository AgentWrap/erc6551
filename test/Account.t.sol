// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.21 <0.9.0;
import { PRBTest } from "@prb/test/PRBTest.sol";
import { AccountRegistry } from "src/AccountRegistry.sol";
import { Account } from "src/Account.sol";

contract Accounr_Test is PRBTest {
    AccountRegistry public registry;
    Account public account;
    function setUp() public virtual {
        registry = new AccountRegistry();
        account = new Account();
    }

    function test_Account_Eq () public {
        bytes32 salt = bytes32(type(uint256).max-1);
        assertEq(registry.createAccount(address(account), salt, block.chainid, address(account), 1),
                registry.account(address(account), salt, block.chainid, address(account), 1));
    }
}

