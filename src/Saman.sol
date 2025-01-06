// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";

contract Saman is ERC20, Ownable {
    constructor() ERC20("Saman", "SMN") Ownable(msg.sender) {}

    function mint(address _to, uint256 _value) public onlyOwner {
        _mint(_to, _value);
    }

    function burn(address _from, uint256 _value) public onlyOwner {
        _burn(_from, _value);
    }
}
