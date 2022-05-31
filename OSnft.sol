// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

//Import EI155 from openzeppelin
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract NFTContract is ERC1155, Ownable {

    uint256 public constant DEER = 0;


    constructor() ERC1155("https://ipfs.io/ipfs/QmUFbUjAifv9GwJo7ufTB5sccnrNqELhDMafoEmZdPPng7") {
        _mint(msg.sender, DEER, 10**10, "");
    }

    function mint (address account, uint256 id, uint256 amount) public onlyOwner {
        _mint(account, id, amount, "");
    }
}
