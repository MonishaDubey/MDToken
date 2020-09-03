// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
contract MDToken is ERC721Full, ERC721Mintable{
  string public constant name = "MD Token";
  string public constant symbol = "MD";
  uint8 public constant decimals = 0;
  uint constant INITIAL_SUPPLY = 5000000;
  constructor () public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
