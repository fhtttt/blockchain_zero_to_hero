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

    mapping(string => uint256) public nameToFavoriteNumber;
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        _name = "hai";
        nameToFavoriteNumber[_name] = _favoriteNumber; //use mapping we can just index the name to get the favorite number

    //memory, calldata, storage
    // Calldata you cannot modify, memory you can modify
    //
}
