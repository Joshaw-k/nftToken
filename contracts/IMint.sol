// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface IMint {
    function mint (address _to,string calldata _uri) external;
}