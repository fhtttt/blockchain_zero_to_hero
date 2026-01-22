// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    // internal external
    uint256 public contractFavoriteNumber;
    //
    function store(uint256 _contractFavoriteNumber) public virtual {
        contractFavoriteNumber = _contractFavoriteNumber;
    }
    function retrieve() public view returns (uint256) {
        return contractFavoriteNumber;
    }

    uint256 public favoriteNumber; //256bit
    struct Person {
        string name;
        uint256 favoriteNumber;
    }
    Person[] public listOfPeople;
    mapping(string name => uint256 favoriteNumber) public nameToFavoriteNumber;

    // memory
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_name, _favoriteNumber));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
