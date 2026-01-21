// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";
contract StorageFactory {
    SimpleStorage public mySimpleStorage;

    function createSimpleStorage() public {
        mySimpleStorage = new SimpleStorage();
    }
}
