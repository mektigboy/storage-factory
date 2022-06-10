// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract SimpleStorage {
    bool public myBoolean = true;
    uint256 public myUnsignedInteger = 123;
    int256 public myInteger = -123;
    string public myString = "String";
    address public myAddress = 0xa7a0275220A00ae3B360F7cB080069063e886271;
    bytes32 public myBytes = "Bytes";
    uint256 public favoriteNumber = 1; // Same as function <retrieve>.
    Struct public myFirstStruct = Struct({ id: 1, name: "First"});
    Struct public mySecondStruct = Struct({ id: 2, name: "Second"});
    Struct public myThirdStruct = Struct({ id: 3, name: "Third"});

    mapping(uint256 => string) public myMapping;

    // Struct named "Struct", to store the identity of a person.
    struct Struct {
        uint256 id;
        string name;
    }

    Struct[] public arrayOfStruct; // Any size.
    // Struct[3] public arrayOfStruct; // Size of 3.

    function pushToArrayOfStruct(uint256 _id, string memory _name) public {
        // Option 1:
        Struct memory myForthStruct = Struct({ id: _id, name: _name });
        arrayOfStruct.push(myForthStruct);

        // Option 2:
        // Struct memory myForthStruct = Struct(_id, _name); // Same order as the one specified in struct "Struct".
        // arrayOfStruct.push(myForthStruct);

        // Option 3:
        // arrayOfStruct.push(Struct(_id, _name));
    }

    function addToMapping(uint256 _id, string memory _name) public {
        myMapping[_id] = _name;
    }

    function store(uint256 _myUnsignedInteger) public returns(uint256) {
        myUnsignedInteger = _myUnsignedInteger;
        uint256 onlyStoredHere = 1; // This variable is only stored within the function.
        return onlyStoredHere;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function add() public pure returns(uint256) {
        return(1 + 1);
    }
}
