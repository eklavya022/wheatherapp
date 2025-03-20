// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WeatherNFTMarketplace {
    struct NFT {
        uint256 tokenId;
        address owner;
        uint256 price;
        bool forSale;
        string tokenURI;
    }

    mapping(uint256 => NFT) public nfts;
    mapping(address => uint256) public balances;
    mapping(address => mapping(uint256 => bool)) public ownedTokens;

    uint256 private _tokenIdCounter;

    event NFTCreated(uint256 indexed tokenId, address owner, string tokenURI);
    event NFTListed(uint256 indexed tokenId, uint256 price);
    event NFTSold(uint256 indexed tokenId, address buyer);

    function mintNFT(string memory tokenURI) public returns (uint256) {
        _tokenIdCounter++;
        uint256 newItemId = _tokenIdCounter;

        nfts[newItemId] = NFT(newItemId, msg.sender, 0, false, tokenURI);
        ownedTokens[msg.sender][newItemId] = true;

        emit NFTCreated(newItemId, msg.sender, tokenURI);
        return newItemId;
    }

    function listNFT(uint256 tokenId, uint256 price) public {
        require(nfts[tokenId].owner == msg.sender, "You are not the owner");
        require(price > 0, "Price must be greater than zero");
        require(!nfts[tokenId].forSale, "NFT is already for sale");

        nfts[tokenId].price = price;
        nfts[tokenId].forSale = true;

        emit NFTListed(tokenId, price);
    }

    function buyNFT(uint256 tokenId) public payable {
        require(nfts[tokenId].forSale, "NFT is not for sale");
        require(msg.value >= nfts[tokenId].price, "Insufficient funds");

        address seller = nfts[tokenId].owner;
        payable(seller).transfer(msg.value);

        nfts[tokenId].owner = msg.sender;
        nfts[tokenId].forSale = false;
        nfts[tokenId].price = 0;

        ownedTokens[seller][tokenId] = false;
        ownedTokens[msg.sender][tokenId] = true;

        emit NFTSold(tokenId, msg.sender);
    }

    function getNFT(uint256 tokenId) public view returns (NFT memory) {
        return nfts[tokenId];
    }
}
