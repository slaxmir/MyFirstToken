//SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;


/**
Demo Assement
1.The Contract will have public variables that store the details about your coin (Token Name, Token Abbrv., 
  Total Supply)
2.The Contract will have a mapping of addresses to balances (address => uint)
   You will have a mint function that takes two parameters: an address and a value. 
3.The function then increases the total supply by that number and increases the balance of the address by that amount.
4.The Contract will have a burn function, which works the opposite of the mint function, 
  as it will destroy tokens. It will take an address and value just like the mint functions. 
  It will then deduct the value from the total supply and from the balance of the address.
5.Lastly, your burn function should have conditionals to make sure the balance of account 
  is greater than or equal to the amount that is supposed to be burned.
*/

contract Mytoken {

    uint public totalSupply = 0;
    string public tokenName = "MIToken";
    string public MITokenAbbr= "MISWA Token ";
    mapping(address => uint) public balance;
   /** This function then increases the total supply by that
    number and increases the balance of the address by that amount.
    */ 
    function mint(address addr,uint value) public {
        totalSupply += value;
        balance[addr] += value;
   }
   /**
    This function will then deduct the value from the total supply and from
    the balance of the address.
    */
    function burn(address _addr,uint _value) public{
        if(balance[_addr]  >= _value){
            totalSupply -= _value;
            balance[_addr] -= _value;
        }
    }
}
