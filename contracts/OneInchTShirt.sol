// SPDX-License-Identifier: MIT

pragma solidity 0.7.6;

import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract OneInchTShirt is ERC20Burnable, Ownable {
    using SafeERC20 for IERC20;

    constructor(address _owner) ERC20("1INCH Denver T-Shirt", "T-SHIRT") {
        _mint(_owner, 254 ether);
        transferOwnership(_owner);
    }

    function rescueFunds(IERC20 token, uint256 amount) external onlyOwner {
        token.safeTransfer(msg.sender, amount);
    }
}
