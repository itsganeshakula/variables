// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleContract {
    // Declare four different types of variables
    uint public uintVariable;
    string public stringVariable;
    address public addressVariable;
    bool public boolVariable;

    // Set function for uint variable
    function setUintVariable(uint _value) public returns (uint) {
        uintVariable = _value;
        return uintVariable;
    }

    // Get function for uint variable
    function getUintVariable() public view returns (uint) {
        return uintVariable;
    }

    // Set function for string variable
    function setStringVariable(string memory _value) public returns (string memory) {
        stringVariable = _value;
        return stringVariable;
    }

    // Get function for string variable
    function getStringVariable() public view returns (string memory) {
        return stringVariable;
    }

    // Set function for address variable
    function setAddressVariable(address _value) public returns (address) {
        addressVariable = _value;
        return addressVariable;
    }

    // Get function for address variable
    function getAddressVariable() public view returns (address) {
        return addressVariable;
    }

    // Set function for bool variable
    function setBoolVariable(bool _value) public returns (bool) {
        boolVariable = _value;
        return boolVariable;
    }

    // Get function for bool variable
    function getBoolVariable() public view returns (bool) {
        return boolVariable;
    }
}