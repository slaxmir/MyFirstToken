# MyFirstToken


Simple overview of use/purpose.

## Description

An in-depth paragraph about your project and overview of use.

## Getting Started

### Installing

* How/where to download your program
* Any modifications needed to be made to files/folders

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```
//SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;


/**
Demo Assement
1.Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., 
  Total Supply)
2.Your contract will have a mapping of addresses to balances (address => uint)
   You will have a mint function that takes two parameters: an address and a value. 
3.The function then increases the total supply by that number and increases the balance of the address by that amount.
4.Your contract will have a burn function, which works the opposite of the mint function, 
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
```

## Help

Any advise for common problems or issues.
```
command to run if program contains helper info
```

## Authors

Contributors names and contact info

ex. Dominique Pizzie  
ex. [@DomPizzie](https://twitter.com/dompizzie)


## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details
