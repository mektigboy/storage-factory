// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage {
    SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }
}
