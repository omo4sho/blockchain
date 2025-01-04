// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleContract {
    string private test;

    // Constructor to initialize the state variable
    constructor(string memory _init) {
        test = _init;
    }

    // Setter function to update the state variable
    function setTest(string memory _newTest) public {
        test = _newTest;
    }

    // Getter function to retrieve the state variable
    function getTest() public view returns (string memory) {
        return test;
    }
}
