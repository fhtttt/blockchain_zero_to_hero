// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    //Functions
    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    string public favoriteGreeting = "Hello, World!"; // Storage
    // dynamic size array
    Person[] public listOfPeople;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        _name = "hai";
    }

    //memory, calldata, storage
    // Calldata you cannot modify, memory you can modify
}
