// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Whitelist {
    uint8 public maxWhitelistedAddresses;

    mapping(address => bool) public whiteListedAdresses;

    uint8 public numAddressesWhiteListed;

    constructor(uint8 _maxWhiteListedAddresses) {
        maxWhitelistedAddresses = _maxWhiteListedAddresses;
    }

    function addAdressToWhiteList() public {
        require(!whiteListedAdresses[msg.sender], "Ya estas en la lista");
        require(
            numAddressesWhiteListed < maxWhitelistedAddresses,
            "La lista ya esta llena"
        );
        whiteListedAdresses[msg.sender] = true;
        numAddressesWhiteListed += 1;
        whiteListedAdresses[msg.sender] = true;
    }
}
