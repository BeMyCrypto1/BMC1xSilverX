// SPDX-License-Identifier: MIT
/**
 * -------------------------------------------------------------
 * Company: BMC1 BeMyCrypto1 LLC
 * Product: BMC1x – Silver Utility Token
 * Contract: BMC1SilverX
 * Version: 1.0.0
 *
 * Characteristics:
 * - No admin roles
 * - No proxy / upgrade logic
 * - No blacklist / freeze
 * - No pausing
 * - Company treasury receives full supply
 * - Fixed, transparent rules
 * -------------------------------------------------------------
 */

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title BMC1SilverX
 * @dev BMC1 BeMyCrypto1 LLC - Treasury for SilverX Token
 * @author Ben Macedo  (bmc1.ceo.macedo@bemycrypto1.online)
 * @notice Handles Company BMC1 SilverX Deployment Tokens
 */ 
 
contract BMC1SilverX is ERC20 {
    /// @notice Maximum supply: 65 billion tokens
    uint256 public constant MAX_SUPPLY = 65_000_000_000 * 1e18;

    /**
     * @notice Constructor mints full supply to company treasury
     * @param initialHolder Address receiving the entire supply
     */
    constructor(address initialHolder) ERC20("BMC1SilverX", "BMC1x") {
        require(initialHolder != address(0), "Invalid holder");
        _mint(initialHolder, MAX_SUPPLY);
    }
}
