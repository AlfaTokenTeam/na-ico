pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract NA is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function NA(address _owner)  UpgradeableToken(_owner) {
    name = "NA";
    symbol = "NNN";
    totalSupply = 277700;
    decimals = 2;

    balances[_owner] = totalSupply;
  }
}