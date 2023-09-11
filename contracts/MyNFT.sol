// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721URIStorage,Ownable{
    uint _tokenId;
    constructor() ERC721("Kitten stark collection","KKS"){}
    function mint(address _to ,string calldata _uri) external onlyOwner{
            _tokenId++;
            _mint(_to,_tokenId);
            _setTokenURI(_tokenId, _uri);
        }
   
}
