// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import { BaseScript } from "./Base.s.sol";
import { ERC6551Account } from "src/ERC6551Account.sol";

/// @dev See the Solidity Scripting tutorial: https://book.getfoundry.sh/tutorials/solidity-scripting
contract Deploy is BaseScript {
    function run() public {
        // Deploy the `Account`.
        vm.startBroadcast(appPrivateKey);
        new ERC6551Account();
        vm.stopBroadcast();
    }
}
