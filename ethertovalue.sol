// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherValueConverter {
    address public owner;
    uint256 public weiValue;
    uint256 public etherValue;
    uint256 public gweiValue;

    event EtherReceived(address sender, uint256 value);

    constructor() {
        owner = msg.sender;
    }

    receive() external payable {
        require(msg.value > 0, "Value must be greater than 0");
        weiValue = msg.value;
        etherValue = msg.value / 1 ether;
        gweiValue = msg.value / 1 gwei;
        emit EtherReceived(msg.sender, msg.value);
    }

    function withdraw() external {
        require(msg.sender == owner, "Only the owner can withdraw");
        payable(owner).transfer(address(this).balance);
    }
}