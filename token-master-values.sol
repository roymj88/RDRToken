pragma solidity ^0.4.11;

contract RDRToken {
    
    /* This creates an array with all balances */
    mapping (address => uint256) public balanceOf;
    string public name;
    string public symbol;
    uint8 public decimals;
    
    /* Initializes contract with initial supply tokens to the creator of the contract */
    function RDRToken(uint256 initialSupply, string tokenName, uint8 decimalUnits, string tokenSymbol) {
        balanceOf[msg.sender] = initialSupply;              // Give the creator all initial tokens
        name = tokenName;                                   // Set the name for display purposes
        symbol = tokenSymbol;                               // Set the symbol for display purposes
        decimals = decimalUnits;                            // Amount of decimals for display purposes
    }
    
    function transfer(address _to, uint256 _value) {
        /* Check if sender has balance and for overflows */
        if (balanceOf[msg.sender] < _value || balanceOf[_to] + _value < balanceOf[_to])
            throw;
    
        /* Add and subtract new balances */
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
    }
   
}