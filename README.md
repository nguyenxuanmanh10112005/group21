# *MicroSavingsVault*  
*A Social-Powered Micro-Savings dApp on Celo*

**"Save alone. Grow together."**  
A transparent, low-cost, and community-driven savings platform built on **Celo** to help the unbanked build wealth — one cUSD at a time.


[![Celo](https://img.shields.io/badge/Built%20on-Celo-35D07F?style=flat&logo=celo)](https://celo.org)
[![Solidity](https://img.shields.io/badge/Solidity-0.8.24-363636?style=flat&logo=solidity)](https://soliditylang.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Testnet: Alfajores](https://img.shields.io/badge/Testnet-Alfajores-blue)](https://alfajores.celoscan.io)

---

## Problem

In emerging markets, *1.4 billion adults remain unbanked*. Even with mobile money:

- *High fees* eat small savings  
- *No commitment tools* → money is spent immediately  
- *Group savings lack transparency* → fraud or mismanagement  
- *Local currency inflation* erodes value  
- *Gifting money is slow, costly, or risky*

---

## Solution

*MicroSavingsVault* is a *social savings vault* where users:

1. *Lock cUSD* for 7+ days to build discipline  
2. *Receive "boosts"* from friends/family (secure gifting)  
3. *Withdraw 100%* after lock period  
4. Pay *< $0.001 per transaction* on Celo

All actions are *on-chain, auditable, and instant*.

---

## Features

| Feature | Description |
|-------|-----------|
| *Time-Locked Vaults* | Minimum 7-day lock to encourage saving |
| *Social Boost* | Anyone can add cUSD to your vault (no access to funds) |
| *0.5% Treasury Fee* | Sustainable model (future DAO) |
| *cUSD Stablecoin* | USD-pegged, inflation-resistant |
| *Mobile-First* | Works with *MiniPay* (Celo’s built-in wallet) |
| *Ultra-Low Fees* | < $0.001 per action |

---

## Live Demo (Alfajores Testnet)

*Contract Address*:  
[Deployed Address Here] (Update after deployment)

*Try it now*:  
[https://remix.ethereum.org/...](https://remix.ethereum.org) (Link to your Remix instance or frontend)

---

## How to Use

### 1. *Connect Wallet*
- Use *MetaMask* or *MiniPay*
- Switch to *Celo Alfajores*

### 2. *Get Test cUSD*
[https://celo.org/developers/faucet](https://celo.org/developers/faucet)

### 3. *Create a Vault*
createVault(10 * 1e18, 7) // 10 cUSD, 7 days

### 4. *Boost a Friend*
boost(friendAddress, 5 * 1e18) // Add 5 cUSD

### 5. *Withdraw*
withdraw() // After lock period

---

## Smart Contract

// contracts/MicroSavingsVault.sol
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract MicroSavingsVault {
    IERC20 public immutable cUSD;
    address public treasury;
    // ... full code in /contracts
}

*cUSD on Alfajores*:  
0x874069Fa1Eb16D44d622F2e0Ca25eeA172369bC1

---

## Deployment (Remix IDE)

1. Open [Remix IDE](https://remix.ethereum.org)
2. Paste MicroSavingsVault.sol
3. Compile with Solidity 0.8.24
4. Go to *Deploy & Run*
5. Environment: *Injected Provider (MetaMask)*
6. Deploy with:
   - _cUSD: 0x874069Fa1Eb16D44d622F2e0Ca25eeA172369bC1
   - _treasury: Your wallet address
7. Confirm in MetaMask

*Done!*

---

## Tech Stack

- *Blockchain*: Celo (EVM-compatible)
- *Smart Contract*: Solidity + OpenZeppelin
- *Stablecoin*: cUSD
- *Wallet*: MetaMask / MiniPay
- *Deployment*: Remix IDE
- *Frontend*: Web3.js / React + wagmi (optional)

---

## Roadmap

| Phase | Feature |
|------|--------|
| v1 | Core vault + boost (Done) |
| v2 | Yield from Celo staking |
| v3 | NFT "Saver Badges" |
| v4 | On-chain reputation |
| v5 | MiniPay mobile app |

---

## Use Cases

- Student savings for tuition  
- Migrant worker family support  
- Community emergency funds  
- NGO transparent aid  
- Birthday/group gifting  

---

## Contributing

We welcome contributions!  
1. Fork the repo  
2. Create a branch (feature/xyz)  
3. Submit a Pull Request  

---

## License

[MIT License](LICENSE) – Free to use, modify, and distribute.

---

## Connect With Us

- *Website*: [microsavingsvault.xyz](https://microsavingsvault.xyz) (coming soon)
- *Twitter*: [@MicroSavings](https://twitter.com/MicroSavings)
- *Discord*: [Join Community](https://discord.gg/celo)
- *Celo Grants*: Eligible for *Celo Camp* & *Build Grants*

---

*Built with love for financial inclusion*  
*Powered by Celo*

---

**Let’s help 1 million people save their first $100 — together.**


---

Deployed on Celo Alfajores | Open Source | Ready for Mainnet
img.shields.io
