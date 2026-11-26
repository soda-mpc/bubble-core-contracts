// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.26;

library BubbleAddresses {
    error UnsupportedBubbleChain(uint256 chainId);

    uint256 internal constant CHAIN_ETHEREUM = 1;
    uint256 internal constant CHAIN_SEPOLIA = 11155111;
    uint256 internal constant CHAIN_ARBITRUM = 42161;
    uint256 internal constant CHAIN_ARBITRUM_SEPOLIA = 421614;
    uint256 internal constant CHAIN_POLYGON = 137;
    uint256 internal constant CHAIN_PRIVATE_ETHEREUM = 50505070;

    function gcAcl() internal view returns (address) {
        uint256 chainId = block.chainid;

        if (chainId == CHAIN_ETHEREUM) return 0xDaA920259d039410b537959c7E920f58AF8877AD;
        if (chainId == CHAIN_ARBITRUM) return 0xDaA920259d039410b537959c7E920f58AF8877AD;
        if (chainId == CHAIN_SEPOLIA) return 0xec8176d47bF788d71215ed4C33fD26Dc89B9121A;
        if (chainId == CHAIN_PRIVATE_ETHEREUM) return 0xDaA920259d039410b537959c7E920f58AF8877AD;
        if (chainId == CHAIN_ARBITRUM_SEPOLIA) return 0x151D20043d86d406428bAc0021a74CB00eDD0166;
        if (chainId == CHAIN_POLYGON) return 0xDaA920259d039410b537959c7E920f58AF8877AD;
        revert UnsupportedBubbleChain(chainId);
    }

    function gcHandler() internal view returns (address) {
        uint256 chainId = block.chainid;

        if (chainId == CHAIN_ETHEREUM) return 0xB7D075b6B72DDdc0bFeC42c4dC3bB669dA4BbBEF;
        if (chainId == CHAIN_ARBITRUM) return 0xB7D075b6B72DDdc0bFeC42c4dC3bB669dA4BbBEF;
        if (chainId == CHAIN_SEPOLIA) return 0xDaA920259d039410b537959c7E920f58AF8877AD;
        if (chainId == CHAIN_PRIVATE_ETHEREUM) return 0xB7D075b6B72DDdc0bFeC42c4dC3bB669dA4BbBEF;
        if (chainId == CHAIN_ARBITRUM_SEPOLIA) return 0xaf4be7A9B141c017f0C0A8226e4417392d4a50CE;
        if (chainId == CHAIN_POLYGON) return 0xB7D075b6B72DDdc0bFeC42c4dC3bB669dA4BbBEF;
        revert UnsupportedBubbleChain(chainId);
    }

    function gcDecryptionVerifier() internal view returns (address) {
        uint256 chainId = block.chainid;

        if (chainId == CHAIN_ETHEREUM) return 0xec8176d47bF788d71215ed4C33fD26Dc89B9121A;
        if (chainId == CHAIN_ARBITRUM) return 0xec8176d47bF788d71215ed4C33fD26Dc89B9121A;
        if (chainId == CHAIN_SEPOLIA) return 0x336646CF32aD1EdB82a8e31eE94DB1Be91932aea;
        if (chainId == CHAIN_PRIVATE_ETHEREUM) return 0xec8176d47bF788d71215ed4C33fD26Dc89B9121A;
        if (chainId == CHAIN_ARBITRUM_SEPOLIA) return 0x7cF497aAb98C3f37300169187FA43C7fD5584Ff0;
        if (chainId == CHAIN_POLYGON) return 0xec8176d47bF788d71215ed4C33fD26Dc89B9121A;

        revert UnsupportedBubbleChain(chainId);
    }
}
