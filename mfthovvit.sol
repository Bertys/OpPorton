// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract PersonalNFT is ERC721 {
    uint256 token_count;

    constructor() ERC721("My custome NFT", "PRTN") {}

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
        return "https://ipfs.io/ipfs/QmTxFCzY9iWPHZQSj9dTmSYU6x3bhZpPSrFVhf2Yq2Am1p";
    }

    function mintNFT(address to) public
    {
        token_count  += 1;
        _mint(to, token_count);
    }
}
