pragma solidity ^0.4.11;
contract RDRToken {
    /* This creates an array with all balances */
    mapping (address => uint256) public balanceOf;
    
    function RDRToken(uint256 intialSupply) {
        balanceOf[msg.sender] = intialSupply;
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
    