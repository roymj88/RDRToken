pragma solidity ^0.4.11;

contract RDRToken {
    /* This creates an array with all balances */
    mapping (address => uint256) public balanceOf;
    
    function RDRToken(uint256 intialSupply) {
        balanceOf[msg.sender] = intialSupply;
    }
   
}