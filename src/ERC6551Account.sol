// SPDX-License-Identifier: MIT

pragma solidity ^0.8.21;

import { ERC6551 } from "solady@0.0.134/accounts/ERC6551.sol";

contract ERC6551Account is ERC6551 {
    function _domainNameAndVersion() internal pure override returns (string memory, string memory) {
        return ("Deployer", "1");
    }
}
