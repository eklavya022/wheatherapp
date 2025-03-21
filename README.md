# wheatherapp# Weather NFT Marketplace

## Project Title
**Weather NFT Marketplace**

## Project Description
The Weather NFT Marketplace is a blockchain-backed platform that allows users to mint, buy, sell, and auction digital assets as NFTs. Users can tokenize weather-related digital assets and trade them securely on the Ethereum blockchain.

## Project Vision
The vision of this project is to create a decentralized marketplace where digital assets related to weather data, weather-themed art, and other meteorological content can be tokenized and traded transparently. The use of blockchain ensures authenticity, ownership verification, and a seamless trading experience.

## Future Scope
- Integration with live weather data APIs to generate NFTs dynamically.
- Expansion to support multi-chain interoperability.
- Implementation of a bidding/auction system for NFTs.
- Development of a mobile-friendly DApp for enhanced user experience.
- Integration with DeFi mechanisms for staking and rewards.

## Key Features
- **Mint NFTs:** Users can create unique NFTs by assigning metadata and a token URI.
- **List NFTs for Sale:** Users can list their NFTs with a set price for buyers.
- **Buy NFTs:** Users can purchase listed NFTs securely using cryptocurrency.
- **Ownership Tracking:** Ensures transparent and immutable ownership records.
- **Smart Contract Security:** Implements checks to prevent unauthorized transactions.

## Smart Contract Overview
This smart contract is written in Solidity and manages the creation, listing, and sale of NFTs without external dependencies.

### Events
- `NFTCreated(uint256 indexed tokenId, address owner, string tokenURI)`: Emitted when a new NFT is minted.
- `NFTListed(uint256 indexed tokenId, uint256 price)`: Emitted when an NFT is listed for sale.
- `NFTSold(uint256 indexed tokenId, address buyer)`: Emitted when an NFT is successfully sold.

### Functions
- `mintNFT(string memory tokenURI)`: Allows users to mint a new NFT with a unique token ID.
- `listNFT(uint256 tokenId, uint256 price)`: Enables users to list their NFTs for sale at a specified price.
- `buyNFT(uint256 tokenId)`: Allows users to purchase listed NFTs by sending the required funds.
- `getNFT(uint256 tokenId)`: Fetches the details of a specific NFT by its token ID.

## Deployment
To deploy the contract:
1. Compile the Solidity contract using Remix or Hardhat.
2. Deploy the contract on the Ethereum blockchain using a wallet like MetaMask.
3. Interact with the contract using Web3.js or Ethers.js.

## License
This project is licensed under the MIT License.
0xB21F44cfBcf5756B2F8d32DF1cC02b7E801CE86D
![image](https://github.com/user-attachments/assets/85dd7100-aeaf-4f1a-9e89-030c00098307)

##frontend
![image](https://github.com/user-attachments/assets/a4c27e3d-a189-4fed-8053-59a3048829bc)


