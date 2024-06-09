// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyToken {
    // Public variables to store token details
    string public tokenName = "Deadly Coin";
    string public tokenAbbrv = "DC";
    uint public totalSupply = 0;

    // Mapping to store balances of addresses
    mapping(address => uint) public balances;

    // Mint function to create new tokens
    function mint(address to_address, uint to_value) public {
        totalSupply += to_value;
        balances[to_address] += to_value;
    }

    // Burn function to destroy tokens
    function burn(address from_address, uint remove_value) public {
        require(balances[from_address] >= remove_value, "Insufficient balance to burn");
        totalSupply -= remove_value;
        balances[from_address] -= remove_value;
    }
}
