// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import '../contracts/MDToken.sol';
contract MDTokenTest {
  function testEnsureTokenNameIsCorrect() public {
    MDToken token = MDToken(DeployedAddresses.MDToken());
    string memory expected = "MD Token";
    string memory actual = token.name();
    Assert.equal(actual, expected, "Ensure token name is correct");
  }
  function testEnsureTotalSupplyIs5Million() public {
    MDToken token = MDToken(DeployedAddresses.MDToken());
    uint256 expected = 5000000;
    uint256 actual = token.totalSupply();
Assert.equal(actual, expected, "Ensure total supply is correct");
  }
  function testEnsureSymbolIsCorrect() public {
    MDToken token = MDToken(DeployedAddresses.MDToken());
    string memory expected = "MD";
    string memory actual = token.symbol();
    Assert.equal(actual, expected, "Ensure symbol is correct");
  }
  function testEnsure0Decimals() public {
    MDToken token = MDToken(DeployedAddresses.MDToken());
    uint256 expected = 0;
    uint256 actual = token.decimals();
    Assert.equal(actual, expected, "Ensure 0 decimals");
  }
}
