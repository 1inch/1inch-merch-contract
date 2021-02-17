// SPDX-License-Identifier: MIT

pragma solidity 0.7.6;

import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";


contract OneInchTShirt is ERC20Burnable {
    constructor(address _owner) ERC20("1INCH T-Shirt", "T-SHIRT") {
        _mint(_owner, 254 ether);
    }
}
