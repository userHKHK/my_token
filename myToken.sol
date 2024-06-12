// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Defining public variables for token name, abbreviation, and total supply
    string public tokenName = "My_Token";
    string public tokenAbbrv = "UTK"; // Changed abbreviation to uppercase for consistency
    uint public totalSupply = 0;

    // Mapping to store the balances of addresses
    mapping(address => uint) public balances;

    // Function to mint new tokens
    // Increases the total supply and the balance of the specified address
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Function to burn tokens
    // Decreases the total supply and the balance of the specified address
    function burn(address _address, uint _value) public {
          if (balances[_address] >= _value){
            totalSupply -= _value;
            balances[_address]-= _value;

    }
  }
}
