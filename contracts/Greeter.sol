//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/finance/PaymentSplitter.sol";

contract Greeter is PaymentSplitter {
    string private greeting;

    constructor(string memory _greeting, address[] memory _payees, uint256[] memory _shares) 
        PaymentSplitter(_payees, _shares) {
        console.log("Deploying a Greeter with greeting:", _greeting);
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }
}
