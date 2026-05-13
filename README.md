# @sodalabs/bubble-core-contracts

Solidity import package for Bubble app contracts.

App creators install this package and import the Solidity sources directly from `node_modules`. There is no copy step, sync script, generated address file, or JavaScript helper.

## Install

Install from npm:

```json
{
  "dependencies": {
    "@sodalabs/bubble-core-contracts": "^0.0.1"
  }
}
```

## Usage

Import the app-facing contracts directly:

```solidity
import "@sodalabs/bubble-core-contracts/contracts/bubble/MpcCore.sol";
import "@sodalabs/bubble-core-contracts/contracts/bubble/DecryptionCaller.sol";
```

Network-specific Bubble core addresses are selected inside the Solidity package by `block.chainid` through `contracts/bubble/BubbleAddresses.sol`. The same app contract source can be compiled and deployed to multiple supported networks without changing imports or package configuration.

Unsupported chains revert with `UnsupportedBubbleChain(chainId)`.

## Supported Chains

The address registry currently includes:

- Ethereum mainnet (`1`)
- Arbitrum One (`42161`)
- Sepolia (`11155111`)

## Layout

- `contracts/bubble/BubbleAddresses.sol` - on-chain address registry keyed by `block.chainid`
- `contracts/bubble/MpcInterface.sol` - interfaces for deployed Bubble core contracts
- `contracts/bubble/MpcCore.sol` - app library for Bubble operations
- `contracts/bubble/DecryptionCaller.sol` - helper base contract for decryption callbacks

This package intentionally has no `main`, `exports`, or runtime JavaScript API. It is consumed through Solidity imports.

## Versioning

Bump `version` in `package.json` when you cut a release.
