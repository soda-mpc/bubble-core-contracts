// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

library BubbleAddresses {
    error UnsupportedBubbleChain(uint256 chainId);

    function gcAcl() internal view returns (address) {
        uint256 chainId = block.chainid;

        if (chainId == 1) return 0xDaA920259d039410b537959c7E920f58AF8877AD;
        if (chainId == 42161) return 0xDaA920259d039410b537959c7E920f58AF8877AD;
        if (chainId == 11155111) return 0xec8176d47bF788d71215ed4C33fD26Dc89B9121A;
        revert UnsupportedBubbleChain(chainId);
    }

    function gcHandler() internal view returns (address) {
        uint256 chainId = block.chainid;

        if (chainId == 1) return 0xB7D075b6B72DDdc0bFeC42c4dC3bB669dA4BbBEF;
        if (chainId == 42161) return 0xB7D075b6B72DDdc0bFeC42c4dC3bB669dA4BbBEF;
        if (chainId == 11155111) return 0xDaA920259d039410b537959c7E920f58AF8877AD;
        revert UnsupportedBubbleChain(chainId);
    }

    function gcExtendedOperations() internal view returns (address) {
        return gcHandler();
    }

    function gcDecryptionVerifier() internal view returns (address) {
        uint256 chainId = block.chainid;

        if (chainId == 1) return 0xec8176d47bF788d71215ed4C33fD26Dc89B9121A;
        if (chainId == 42161) return 0xec8176d47bF788d71215ed4C33fD26Dc89B9121A;
        if (chainId == 11155111) return 0x336646CF32aD1EdB82a8e31eE94DB1Be91932aea;

        revert UnsupportedBubbleChain(chainId);
    }
}
