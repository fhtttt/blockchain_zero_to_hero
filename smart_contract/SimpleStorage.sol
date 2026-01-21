// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    //Functions
    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        // if you add the retrieve here, you will cost a bit more
        retrieve();
    }

    // view pure
    function retrieve() public view returns (uint256) {
        // this function won't cost when you call
        return favoriteNumber;
    }
}
