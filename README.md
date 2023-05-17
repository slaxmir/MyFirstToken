# MyFirstToken
This Solidity program MyfirstToken.sol, in this I have created a contract and inside that contract I have created a token named
MISWA Token. 


## Description

This program is a simple contract written in Solidity,a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a two functions of a token which is burn and mint function which can increment balance of an
address and the total supply with value passed into the mint function and deduct token amount and total supply with the value passed in the burn function.


## Getting Started


### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

```
//SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;


/**
Demo Assement
1.The contract will have public variables that store the details about your coin (Token Name, Token Abbrv., 
  Total Supply)
2.The contract will have a mapping of addresses to balances (address => uint)
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
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.15" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint and burn function. Click on the "MyToken" contract in the left-hand sidebar, and then click on the "mint" function and pass the address and value. Repeat the same process for the burn function too.You can the balance and total supply for after mint and burn functions tranacted Finally, click on the "transact" button to execute the function 



