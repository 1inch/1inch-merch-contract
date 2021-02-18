// SPDX-License-Identifier: MIT

pragma solidity 0.7.6;

import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract OneInchTShirt is ERC20Burnable, Ownable {
    using SafeERC20 for IERC20;

    constructor(address _owner) ERC20("1inch T-Shirt ETH Denver 2021", "1TS-D21") {
        _mint(_owner, 254 ether);
        transferOwnership(_owner);
    }

    function rescueFunds(IERC20 token, uint256 amount) external onlyOwner {
        token.safeTransfer(msg.sender, amount);
    }

    function _burn(address account, uint256 amount) internal override {
        require(amount % 1e18 == 0, "Partial burn is not allowed");
        super._burn(account, amount);
    }
}
