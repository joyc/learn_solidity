// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract Counter {
    uint public counter;
    address owner;

    constructor(uint x) {
        counter = x;
        owner = msg.sender;
    }

    function count() public {
        require(msg.sender == owner, "invalid call");
        counter += 1;
        console.log(counter);
    }

    function add(uint x) public {
        counter += x;
    }
}
