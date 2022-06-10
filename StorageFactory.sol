// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "./SimpleStorage.sol";

contract StorageFactory {
    // SimpleStorage public simpleStorage;
    SimpleStorage[] public arrayOfSimpleStorageContracts; // Create an array of "SimpleStorage" contracts.

    function createSimpleStorageContract() public {
        // simpleStorage = new SimpleStorage(); // Deploy new contract "SimpleStorage".
        SimpleStorage simpleStorage; // Variable named "simpleStorage", its type is the contract called "SimpleStorage".
        simpleStorage = new SimpleStorage(); // Assign the variable "simpleStorage" the value of a new contract "SimpleStorage".
        arrayOfSimpleStorageContracts.push(simpleStorage); // Push a new contract to the array "simpleStorageArray".
    }

    function storageFactoryStore(uint256 _index, uint256 _myUnsignedInteger) public {
        // Option 1.
        // SimpleStorage simpleStorage;
        // simpleStorage = arrayOfSimpleStorageContracts[_index]; // _index is the index we are looking for in "arrayOfSimpleStorageContracts".
        // simpleStorage.store(_myUnsignedInteger); // Call the function "store" from the "SimpleStorage" contract. Pass the parameter "_myUnsignedInteger".

        // Option 2.
        arrayOfSimpleStorageContracts[_index].store(_myUnsignedInteger);
    }

    function storageFactoryGet(uint256 _index) public view returns(uint256) {
        // Option 1.
        // SimpleStorage simpleStorage;
        // simpleStorage = arrayOfSimpleStorageContracts[_index];
        // return simpleStorage.retrieve(); // Call the function "retrieve".

        // Option 2.
        return arrayOfSimpleStorageContracts[_index].retrieve();
    }
}
