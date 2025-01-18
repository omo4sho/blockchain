// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SimpleStorage {
  uint256 private value;
  constructor(uint256 _value) {
   value = _value;
   }
  function getValue() public view returns (uint256) {
   return value;
   }
  function incrementValue() public {
   value += 1;
   }
 }