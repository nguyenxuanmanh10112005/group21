// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract MicroSavingsVault {
    IERC20 public immutable cUSD;
    uint256 public constant MIN_LOCK_DAYS = 7;
    uint256 public constant BOOST_FEE_BPS = 50; // 0.5%

    struct Vault {
        uint256 amount;
        uint256 unlockTime;
        uint256 boosted;
    }

    mapping(address => Vault) public vaults;
    address public treasury;

    event Deposited(address indexed user, uint256 amount, uint256 daysLocked);
    event Boosted(address indexed booster, address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 total);

    constructor(address _cUSD, address _treasury) {
        cUSD = IERC20(_cUSD);
        treasury = _treasury;
    }

    function createVault(uint256 amount, uint256 lockDays) external {
        require(lockDays >= MIN_LOCK_DAYS, "It nhat 7 ngay");
        require(amount > 0, "So tien > 0");
        Vault storage v = vaults[msg.sender];
        require(v.amount == 0, "Da co hu");

        cUSD.transferFrom(msg.sender, address(this), amount);
        v.amount = amount;
        v.unlockTime = block.timestamp + lockDays * 30;

        emit Deposited(msg.sender, amount, lockDays);
    }

    function boost(address user, uint256 amount) external {
        require(amount > 0, "So tien > 0");
        Vault storage v = vaults[user];
        require(v.amount > 0, "Khong co hu");

        uint256 fee = (amount * BOOST_FEE_BPS) / 10_000;
        uint256 net = amount - fee;

        cUSD.transferFrom(msg.sender, treasury, fee);
        cUSD.transferFrom(msg.sender, address(this), net);
        v.boosted += net;

        emit Boosted(msg.sender, user, net);
    }

    function withdraw() external {
        Vault storage v = vaults[msg.sender];
        require(v.amount > 0, "Khong co hu");
        require(block.timestamp >= v.unlockTime, "Chua den han");

        uint256 total = v.amount + v.boosted;
        delete vaults[msg.sender];
        cUSD.transfer(msg.sender, total);

        emit Withdrawn(msg.sender, total);
    }

    function vaultOf(address user) external view returns (uint256, uint256, uint256) {
        Vault memory v = vaults[user];
        return (v.amount, v.unlockTime, v.boosted);
    }
}